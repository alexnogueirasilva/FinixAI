defmodule ActionCmsWeb.DashboardLive do
  use ActionCmsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, 
     assign(socket,
       current_user: socket.assigns[:current_user],
       current_year: Date.utc_today().year,
       user_stats: %{
         total_balance: 47520.89,
         income: 15240.50,
         expenses: 8245.67,
         investments: 32150.14
       },
       recent_transactions: [
         %{id: 1, type: :income, description: "Salário", amount: 8500.00, date: "Hoje, 14:30", icon: "hero-plus", color: "green"},
         %{id: 2, type: :expense, description: "Supermercado", amount: -245.80, date: "Ontem, 18:45", icon: "hero-minus", color: "red"},
         %{id: 3, type: :transfer, description: "Transferência", amount: 1200.00, date: "2 dias atrás", icon: "hero-arrow-right", color: "blue"}
       ],
       categories: [
         %{name: "Alimentação", percentage: 35, color: "purple"},
         %{name: "Transporte", percentage: 28, color: "pink"},
         %{name: "Lazer", percentage: 22, color: "blue"},
         %{name: "Outros", percentage: 15, color: "green"}
       ]
     )}
  end

  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900">
      <!-- Split Layout Container -->
      <div class="flex h-screen">
        <!-- Left Sidebar -->
        <div class="w-64 bg-gray-800 border-r border-gray-700 flex flex-col">
          <!-- Logo -->
          <div class="p-4 border-b border-gray-700">
            <div class="flex items-center space-x-2">
              <div class="w-8 h-8 bg-gradient-to-r from-purple-400 to-pink-400 rounded-lg flex items-center justify-center">
                <span class="text-white font-bold text-sm">F</span>
              </div>
              <span class="text-white font-bold text-lg">FinControl</span>
            </div>
          </div>
          
          <!-- Navigation -->
          <nav class="flex-1 p-4">
            <ul class="space-y-2">
              <li>
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg bg-purple-600 text-white">
                  <.icon name="hero-home" class="w-5 h-5" />
                  <span class="text-sm font-medium">Dashboard</span>
                </a>
              </li>
              <li>
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                  <.icon name="hero-banknotes" class="w-5 h-5" />
                  <span class="text-sm font-medium">Transações</span>
                </a>
              </li>
              <li>
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                  <.icon name="hero-chart-bar" class="w-5 h-5" />
                  <span class="text-sm font-medium">Relatórios</span>
                </a>
              </li>
              <li>
                <a href="#" class="flex items-center space-x-3 p-3 rounded-lg text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                  <.icon name="hero-cog-6-tooth" class="w-5 h-5" />
                  <span class="text-sm font-medium">Configurações</span>
                </a>
              </li>
            </ul>
          </nav>
          
          <!-- User Profile -->
          <div class="p-4 border-t border-gray-700">
            <div class="flex items-center space-x-3">
              <div class="w-8 h-8 bg-gradient-to-r from-green-400 to-blue-400 rounded-full flex items-center justify-center">
                <span class="text-white font-bold text-xs">
                  <%= if assigns[:current_user] && @current_user, do: String.first(@current_user.email), else: "U" %>
                </span>
              </div>
              <div class="flex-1 min-w-0">
                <p class="text-sm font-medium text-white truncate">
                  <%= if assigns[:current_user], do: @current_user.email, else: "Usuário" %>
                </p>
                <p class="text-xs text-gray-400">Online</p>
              </div>
              <.link href={~p"/users/log_out"} method="delete" class="text-gray-400 hover:text-white">
                <.icon name="hero-arrow-right-on-rectangle" class="w-4 h-4" />
              </.link>
            </div>
          </div>
        </div>
        
        <!-- Main Content -->
        <div class="flex-1 flex flex-col overflow-hidden">
          <!-- Header -->
          <header class="bg-gray-800 border-b border-gray-700 p-4">
            <div class="flex items-center justify-between">
              <div>
                <h1 class="text-xl font-bold text-white">Dashboard Financeiro</h1>
                <p class="text-sm text-gray-400">Bem-vindo ao seu painel de controle</p>
              </div>
              <div class="flex items-center space-x-4">
                <button class="p-2 text-gray-400 hover:text-white hover:bg-gray-700 rounded-lg transition-colors">
                  <.icon name="hero-bell" class="w-5 h-5" />
                </button>
                <button class="bg-gradient-to-r from-purple-500 to-pink-500 hover:from-purple-600 hover:to-pink-600 text-white px-4 py-2 rounded-lg text-sm font-medium transition-colors">
                  Nova Transação
                </button>
              </div>
            </div>
          </header>
          
          <!-- Dashboard Content -->
          <main class="flex-1 overflow-y-auto p-6">
            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
              <div class="bg-gradient-to-r from-purple-600 to-purple-700 rounded-lg p-4 text-white">
                <div class="flex items-center justify-between mb-2">
                  <span class="text-purple-200 text-xs">Saldo Total</span>
                  <.icon name="hero-wallet" class="w-4 h-4 text-purple-300" />
                </div>
                <div class="text-lg font-bold">R$ <%= :erlang.float_to_binary(@user_stats.total_balance, decimals: 2) |> String.replace(".", ",") %></div>
                <div class="text-green-300 text-xs">+12.5%</div>
              </div>
              
              <div class="bg-gradient-to-r from-blue-600 to-blue-700 rounded-lg p-4 text-white">
                <div class="flex items-center justify-between mb-2">
                  <span class="text-blue-200 text-xs">Receitas</span>
                  <.icon name="hero-arrow-trending-up" class="w-4 h-4 text-blue-300" />
                </div>
                <div class="text-lg font-bold">R$ <%= :erlang.float_to_binary(@user_stats.income, decimals: 2) |> String.replace(".", ",") %></div>
                <div class="text-green-300 text-xs">+8.2%</div>
              </div>
              
              <div class="bg-gradient-to-r from-red-600 to-red-700 rounded-lg p-4 text-white">
                <div class="flex items-center justify-between mb-2">
                  <span class="text-red-200 text-xs">Gastos</span>
                  <.icon name="hero-credit-card" class="w-4 h-4 text-red-300" />
                </div>
                <div class="text-lg font-bold">R$ <%= :erlang.float_to_binary(@user_stats.expenses, decimals: 2) |> String.replace(".", ",") %></div>
                <div class="text-orange-300 text-xs">-5.2%</div>
              </div>
              
              <div class="bg-gradient-to-r from-green-600 to-green-700 rounded-lg p-4 text-white">
                <div class="flex items-center justify-between mb-2">
                  <span class="text-green-200 text-xs">Investimentos</span>
                  <.icon name="hero-chart-bar-square" class="w-4 h-4 text-green-300" />
                </div>
                <div class="text-lg font-bold">R$ <%= :erlang.float_to_binary(@user_stats.investments, decimals: 2) |> String.replace(".", ",") %></div>
                <div class="text-green-300 text-xs">+18.7%</div>
              </div>
            </div>
            
            <!-- Charts and Transactions -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
              <!-- Chart Section -->
              <div class="bg-gray-800 rounded-lg p-4">
                <h3 class="text-white text-sm font-semibold mb-3">Evolução Patrimonial</h3>
                <div class="h-48 bg-gradient-to-r from-purple-900/20 to-blue-900/20 rounded-lg p-4 flex items-end space-x-1">
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-8"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-12"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-6"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-16"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-20"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-14"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-24"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-32"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-28"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t h-36"></div>
                </div>
              </div>
              
              <!-- Recent Transactions -->
              <div class="bg-gray-800 rounded-lg p-4">
                <h3 class="text-white text-sm font-semibold mb-3">Transações Recentes</h3>
                <div class="space-y-3">
                  <%= for transaction <- @recent_transactions do %>
                    <div class="flex items-center justify-between py-2">
                      <div class="flex items-center space-x-3">
                        <div class={"w-6 h-6 bg-#{transaction.color}-600 rounded-full flex items-center justify-center"}>
                          <.icon name={transaction.icon} class="w-3 h-3 text-white" />
                        </div>
                        <div>
                          <div class="text-white text-xs font-medium"><%= transaction.description %></div>
                          <div class="text-gray-400 text-xs"><%= transaction.date %></div>
                        </div>
                      </div>
                      <div class={"text-#{transaction.color}-400 font-semibold text-sm"}>
                        <%= if transaction.amount > 0, do: "+", else: "" %>R$ <%= abs(transaction.amount) |> :erlang.float_to_binary(decimals: 2) |> String.replace(".", ",") %>
                      </div>
                    </div>
                  <% end %>
                </div>
                <div class="mt-4 pt-3 border-t border-gray-700">
                  <button class="w-full text-purple-400 hover:text-purple-300 text-sm font-medium transition-colors">
                    Ver todas as transações
                  </button>
                </div>
              </div>
            </div>
            
            <!-- Categories Section -->
            <div class="mt-6 bg-gray-800 rounded-lg p-4">
              <h3 class="text-white text-sm font-semibold mb-3">Categorias de Gastos</h3>
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="flex items-center justify-center">
                  <div class="w-24 h-24 rounded-full bg-gradient-to-r from-purple-500 via-pink-500 to-blue-500 relative">
                    <div class="absolute inset-3 bg-gray-800 rounded-full flex items-center justify-center">
                      <span class="text-white text-xs font-semibold">100%</span>
                    </div>
                  </div>
                </div>
                <div class="space-y-2">
                  <%= for category <- @categories do %>
                    <div class="flex items-center justify-between text-sm">
                      <div class="flex items-center space-x-2">
                        <div class={"w-3 h-3 bg-#{category.color}-500 rounded-full"}></div>
                        <span class="text-gray-300"><%= category.name %></span>
                      </div>
                      <span class="text-white"><%= category.percentage %>%</span>
                    </div>
                  <% end %>
                </div>
              </div>
            </div>
          </main>
        </div>
      </div>
    </div>
    """
  end
end