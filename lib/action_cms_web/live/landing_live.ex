defmodule ActionCmsWeb.LandingLive do
  use ActionCmsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="gradient-bg">
      <!-- Navigation -->
      <nav class="fixed top-0 left-0 right-0 z-50 w-full glass-morphism border-b border-purple-500/20">
        <div class="edge-to-edge flex items-center justify-between py-4">
          <div class="flex items-center space-x-3">
            <div class="w-12 h-12 bg-gradient-to-r from-purple-400 to-pink-400 rounded-2xl flex items-center justify-center floating-animation glow-effect">
              <span class="text-white font-bold text-xl">F</span>
            </div>
            <span class="text-white font-bold text-2xl text-glow">FinControl</span>
          </div>
          
          <div class="hidden md:flex items-center space-x-8">
            <a href="#features" class="text-purple-200 hover:text-white transition-colors text-lg">Recursos</a>
            <a href="#dashboard" class="text-purple-200 hover:text-white transition-colors text-lg">Dashboard</a>
            <a href="#contact" class="text-purple-200 hover:text-white transition-colors text-lg">Contato</a>
            <button class="bg-gradient-to-r from-purple-500 to-pink-500 hover:from-purple-600 hover:to-pink-600 text-white px-8 py-3 rounded-xl text-lg font-semibold btn-animate transform hover:scale-105 glow-effect">
              Começar Agora
            </button>
          </div>
        </div>
      </nav>

      <!-- Hero Section -->
      <section class="min-h-screen flex items-center justify-center pt-20 full-viewport">
        <div class="edge-to-edge text-center">
          <div class="space-y-12">
            <h1 class="text-6xl md:text-7xl lg:text-8xl text-white text-glow leading-none font-black">
              <span class="block">SUAS</span>
              <span class="gradient-text block">FINANÇAS</span>
              <span class="block text-4xl md:text-5xl lg:text-6xl text-purple-200 mt-6 font-bold">SOB CONTROLE TOTAL</span>
            </h1>
            <p class="text-xl md:text-2xl lg:text-3xl text-purple-200 leading-relaxed font-light max-w-5xl mx-auto">
              Revolucione sua vida financeira com inteligência artificial
            </p>
          </div>

          <div class="flex flex-col lg:flex-row gap-8 justify-center mt-20">
            <button class="bg-gradient-to-r from-purple-500 to-pink-500 hover:from-purple-600 hover:to-pink-600 text-white px-16 py-8 rounded-3xl text-3xl font-semibold btn-animate transform hover:scale-105 shadow-2xl pulse-glow">
              COMEÇAR AGORA
            </button>
            <button class="border-4 border-purple-400 text-purple-200 hover:bg-purple-400 hover:text-white px-16 py-8 rounded-3xl text-3xl font-semibold btn-animate">
              VER DEMO
            </button>
          </div>
        </div>

        <!-- Edge Statistics -->
        <div class="absolute top-1/2 left-0 transform -translate-y-1/2 hidden xl:block">
          <div class="glass-morphism rounded-r-3xl p-8 floating-animation">
            <div class="text-purple-200 text-lg mb-3">Usuários</div>
            <div class="text-white text-5xl font-bold">50K+</div>
          </div>
        </div>
        
        <div class="absolute top-1/3 right-0 transform -translate-y-1/2 hidden xl:block">
          <div class="glass-morphism rounded-l-3xl p-8 floating-animation" style="animation-delay: 1s;">
            <div class="text-purple-200 text-lg mb-3">Patrimônio</div>
            <div class="text-white text-5xl font-bold">R$ 2.5B</div>
          </div>
        </div>
      </section>

      <!-- Dashboard Section -->
      <section id="dashboard" class="min-h-screen flex items-center justify-center full-viewport">
        <div class="edge-to-edge">
          <div class="text-center mb-20">
            <h2 class="large-title text-white text-glow leading-none">
              DASHBOARD
              <span class="gradient-text block">INTELIGENTE</span>
            </h2>
            <p class="big-text text-purple-200 leading-relaxed font-light">
              Tudo que você precisa em uma única tela
            </p>
          </div>

          <!-- Dashboard Image Placeholder -->
          <div class="floating-animation max-w-7xl mx-auto">
            <div class="relative overflow-hidden rounded-2xl shadow-2xl glow-effect">
              <!-- Dashboard Screenshot -->
              <div class="bg-gradient-to-br from-gray-900 to-gray-800 p-6">
                <!-- Window Header -->
                <div class="flex items-center space-x-2 mb-6">
                  <div class="w-3 h-3 bg-red-500 rounded-full"></div>
                  <div class="w-3 h-3 bg-yellow-500 rounded-full"></div>
                  <div class="w-3 h-3 bg-green-500 rounded-full"></div>
                  <div class="ml-4 bg-gray-700 rounded-lg px-4 py-2">
                    <span class="text-gray-300 text-sm">fincontrol.app/dashboard</span>
                  </div>
                </div>
                
                <!-- Dashboard Content -->
                <div class="space-y-6">
                  <!-- Stats Cards -->
                  <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
                    <div class="bg-gradient-to-r from-purple-600 to-purple-700 rounded-xl p-6 text-white">
                      <div class="flex items-center justify-between mb-2">
                        <span class="text-purple-200 text-sm">Saldo Total</span>
                        <.icon name="hero-wallet" class="w-5 h-5 text-purple-300" />
                      </div>
                      <div class="text-2xl font-bold">R$ 47.520,89</div>
                      <div class="text-green-300 text-sm">+12.5%</div>
                    </div>
                    
                    <div class="bg-gradient-to-r from-blue-600 to-blue-700 rounded-xl p-6 text-white">
                      <div class="flex items-center justify-between mb-2">
                        <span class="text-blue-200 text-sm">Receitas</span>
                        <.icon name="hero-arrow-trending-up" class="w-5 h-5 text-blue-300" />
                      </div>
                      <div class="text-2xl font-bold">R$ 15.240,50</div>
                      <div class="text-green-300 text-sm">+8.2%</div>
                    </div>
                    
                    <div class="bg-gradient-to-r from-red-600 to-red-700 rounded-xl p-6 text-white">
                      <div class="flex items-center justify-between mb-2">
                        <span class="text-red-200 text-sm">Gastos</span>
                        <.icon name="hero-credit-card" class="w-5 h-5 text-red-300" />
                      </div>
                      <div class="text-2xl font-bold">R$ 8.245,67</div>
                      <div class="text-orange-300 text-sm">-5.2%</div>
                    </div>
                    
                    <div class="bg-gradient-to-r from-green-600 to-green-700 rounded-xl p-6 text-white">
                      <div class="flex items-center justify-between mb-2">
                        <span class="text-green-200 text-sm">Investimentos</span>
                        <.icon name="hero-chart-bar-square" class="w-5 h-5 text-green-300" />
                      </div>
                      <div class="text-2xl font-bold">R$ 32.150,14</div>
                      <div class="text-green-300 text-sm">+18.7%</div>
                    </div>
                  </div>
                  
                  <!-- Charts -->
                  <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                    <!-- Line Chart -->
                    <div class="bg-gray-800 rounded-xl p-6">
                      <h3 class="text-white text-lg font-semibold mb-4">Evolução Patrimonial</h3>
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
                    
                    <!-- Pie Chart -->
                    <div class="bg-gray-800 rounded-xl p-6">
                      <h3 class="text-white text-lg font-semibold mb-4">Categorias de Gastos</h3>
                      <div class="flex items-center justify-center">
                        <div class="w-32 h-32 rounded-full bg-gradient-to-r from-purple-500 via-pink-500 to-blue-500 relative">
                          <div class="absolute inset-4 bg-gray-800 rounded-full flex items-center justify-center">
                            <span class="text-white text-sm font-semibold">100%</span>
                          </div>
                        </div>
                      </div>
                      <div class="mt-4 space-y-2">
                        <div class="flex items-center justify-between text-sm">
                          <div class="flex items-center space-x-2">
                            <div class="w-3 h-3 bg-purple-500 rounded-full"></div>
                            <span class="text-gray-300">Alimentação</span>
                          </div>
                          <span class="text-white">35%</span>
                        </div>
                        <div class="flex items-center justify-between text-sm">
                          <div class="flex items-center space-x-2">
                            <div class="w-3 h-3 bg-pink-500 rounded-full"></div>
                            <span class="text-gray-300">Transporte</span>
                          </div>
                          <span class="text-white">28%</span>
                        </div>
                        <div class="flex items-center justify-between text-sm">
                          <div class="flex items-center space-x-2">
                            <div class="w-3 h-3 bg-blue-500 rounded-full"></div>
                            <span class="text-gray-300">Lazer</span>
                          </div>
                          <span class="text-white">22%</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Recent Transactions -->
                  <div class="bg-gray-800 rounded-xl p-6">
                    <h3 class="text-white text-lg font-semibold mb-4">Transações Recentes</h3>
                    <div class="space-y-3">
                      <div class="flex items-center justify-between py-2">
                        <div class="flex items-center space-x-3">
                          <div class="w-8 h-8 bg-green-600 rounded-full flex items-center justify-center">
                            <.icon name="hero-plus" class="w-4 h-4 text-white" />
                          </div>
                          <div>
                            <div class="text-white text-sm font-medium">Salário</div>
                            <div class="text-gray-400 text-xs">Hoje, 14:30</div>
                          </div>
                        </div>
                        <div class="text-green-400 font-semibold">+R$ 8.500,00</div>
                      </div>
                      <div class="flex items-center justify-between py-2">
                        <div class="flex items-center space-x-3">
                          <div class="w-8 h-8 bg-red-600 rounded-full flex items-center justify-center">
                            <.icon name="hero-minus" class="w-4 h-4 text-white" />
                          </div>
                          <div>
                            <div class="text-white text-sm font-medium">Supermercado</div>
                            <div class="text-gray-400 text-xs">Ontem, 18:45</div>
                          </div>
                        </div>
                        <div class="text-red-400 font-semibold">-R$ 245,80</div>
                      </div>
                      <div class="flex items-center justify-between py-2">
                        <div class="flex items-center space-x-3">
                          <div class="w-8 h-8 bg-blue-600 rounded-full flex items-center justify-center">
                            <.icon name="hero-arrow-right" class="w-4 h-4 text-white" />
                          </div>
                          <div>
                            <div class="text-white text-sm font-medium">Transferência</div>
                            <div class="text-gray-400 text-xs">2 dias atrás</div>
                          </div>
                        </div>
                        <div class="text-blue-400 font-semibold">R$ 1.200,00</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Features Section -->
      <section id="features" class="min-h-screen flex items-center justify-center full-viewport">
        <div class="edge-to-edge">
          <div class="text-center mb-24">
            <h2 class="text-5xl md:text-6xl lg:text-7xl font-bold text-white text-glow leading-tight">
              <span class="gradient-text">RECURSOS</span>
              <span class="block">REVOLUCIONÁRIOS</span>
            </h2>
            <p class="text-xl md:text-2xl lg:text-3xl text-purple-200 leading-relaxed font-light">
              Tecnologia que transforma vidas financeiras
            </p>
          </div>

          <div class="grid grid-cols-1 lg:grid-cols-2 gap-16">
            <!-- Main Feature -->
            <div class="space-y-8">
              <div class="glass-morphism rounded-3xl p-12 md:p-16 card-hover">
                <div class="w-24 h-24 bg-gradient-to-r from-purple-500 to-pink-500 rounded-3xl flex items-center justify-center mb-8 glow-effect">
                  <.icon name="hero-chart-bar" class="w-12 h-12 text-white" />
                </div>
                <h3 class="text-4xl md:text-5xl font-bold text-white mb-8">Inteligência Artificial Avançada</h3>
                <p class="text-2xl text-purple-200 leading-relaxed mb-8">
                  Nossa IA de última geração analisa milhões de dados para oferecer insights únicos sobre suas finanças.
                </p>
                <ul class="space-y-4 text-xl text-purple-200">
                  <li class="flex items-center">
                    <.icon name="hero-check-circle" class="w-6 h-6 text-green-400 mr-4" />
                    Categorização automática inteligente
                  </li>
                  <li class="flex items-center">
                    <.icon name="hero-check-circle" class="w-6 h-6 text-green-400 mr-4" />
                    Previsões financeiras precisas
                  </li>
                  <li class="flex items-center">
                    <.icon name="hero-check-circle" class="w-6 h-6 text-green-400 mr-4" />
                    Recomendações personalizadas
                  </li>
                </ul>
              </div>
            </div>

            <!-- Feature Grid -->
            <div class="grid grid-cols-1 gap-8">
              <div class="glass-morphism rounded-3xl p-8 md:p-12 card-hover">
                <div class="w-20 h-20 bg-gradient-to-r from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mb-6">
                  <.icon name="hero-shield-check" class="w-10 h-10 text-white" />
                </div>
                <h3 class="text-2xl md:text-3xl font-bold text-white mb-4">Segurança Militar</h3>
                <p class="text-xl text-purple-200 leading-relaxed">
                  Criptografia de nível militar e autenticação biométrica avançada.
                </p>
              </div>

              <div class="glass-morphism rounded-3xl p-8 md:p-12 card-hover">
                <div class="w-20 h-20 bg-gradient-to-r from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mb-6">
                  <.icon name="hero-device-phone-mobile" class="w-10 h-10 text-white" />
                </div>
                <h3 class="text-2xl md:text-3xl font-bold text-white mb-4">App Nativo</h3>
                <p class="text-xl text-purple-200 leading-relaxed">
                  Experiência nativa iOS e Android com sincronização instantânea.
                </p>
              </div>

              <div class="glass-morphism rounded-3xl p-8 md:p-12 card-hover">
                <div class="w-20 h-20 bg-gradient-to-r from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mb-6">
                  <.icon name="hero-bell" class="w-10 h-10 text-white" />
                </div>
                <h3 class="text-2xl md:text-3xl font-bold text-white mb-4">Alertas Inteligentes</h3>
                <p class="text-xl text-purple-200 leading-relaxed">
                  Notificações contextuais baseadas em machine learning.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- CTA Section -->
      <section class="min-h-screen flex items-center justify-center full-viewport">
        <div class="edge-to-edge text-center">
          <div class="glass-morphism rounded-3xl p-12 md:p-20 lg:p-24 pulse-glow">
            <h2 class="text-5xl md:text-6xl lg:text-7xl font-bold text-white text-glow leading-tight mb-12">
              TRANSFORME
              <span class="gradient-text block">SUA VIDA</span>
              <span class="block text-4xl md:text-5xl lg:text-6xl mt-6">FINANCEIRA HOJE</span>
            </h2>
            <p class="text-xl md:text-2xl lg:text-3xl text-purple-200 mb-16 leading-relaxed font-light">
              Mais de 50.000 pessoas já revolucionaram suas finanças
            </p>
            
            <div class="flex flex-col lg:flex-row gap-8 justify-center mb-16">
              <button class="bg-gradient-to-r from-purple-500 to-pink-500 hover:from-purple-600 hover:to-pink-600 text-white px-16 py-8 rounded-3xl text-3xl md:text-4xl font-semibold btn-animate transform hover:scale-105 shadow-2xl glow-effect">
                COMEÇAR GRÁTIS AGORA
              </button>
              <button class="border-4 border-purple-400 text-purple-200 hover:bg-purple-400 hover:text-white px-16 py-8 rounded-3xl text-3xl md:text-4xl font-semibold btn-animate">
                FALAR COM ESPECIALISTA
              </button>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-12 text-center">
              <div>
                <div class="text-5xl md:text-6xl lg:text-7xl font-bold text-white mb-4">14 DIAS</div>
                <div class="text-2xl md:text-3xl text-purple-200">Totalmente Grátis</div>
              </div>
              <div>
                <div class="text-5xl md:text-6xl lg:text-7xl font-bold text-white mb-4">SEM</div>
                <div class="text-2xl md:text-3xl text-purple-200">Cartão de Crédito</div>
              </div>
              <div>
                <div class="text-5xl md:text-6xl lg:text-7xl font-bold text-white mb-4">24/7</div>
                <div class="text-2xl md:text-3xl text-purple-200">Suporte Premium</div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Footer -->
      <footer class="edge-to-edge py-8 border-t border-purple-500/20">
        <div class="flex flex-col md:flex-row justify-between items-center mb-6">
          <div class="flex items-center space-x-3 mb-4 md:mb-0">
            <div class="w-10 h-10 bg-gradient-to-r from-purple-400 to-pink-400 rounded-xl flex items-center justify-center glow-effect">
              <span class="text-white font-bold text-lg">F</span>
            </div>
            <span class="text-white font-bold text-xl text-glow">FinControl</span>
          </div>
          
          <div class="flex space-x-6 text-purple-200">
            <a href="#" class="hover:text-white transition-colors text-sm">Privacidade</a>
            <a href="#" class="hover:text-white transition-colors text-sm">Termos</a>
            <a href="#" class="hover:text-white transition-colors text-sm">Suporte</a>
          </div>
        </div>
        
        <!-- Technologies -->
        <div class="flex flex-col md:flex-row justify-between items-center pt-6 border-t border-purple-500/10">
          <div class="flex items-center space-x-4 mb-4 md:mb-0">
            <span class="text-purple-300 text-sm">Desenvolvido com:</span>
            <div class="flex items-center space-x-3">
              <div class="flex items-center space-x-1 bg-purple-800/30 rounded-lg px-3 py-1">
                <div class="w-2 h-2 bg-purple-400 rounded-full"></div>
                <span class="text-purple-200 text-sm font-medium">Elixir</span>
              </div>
              <div class="flex items-center space-x-1 bg-purple-800/30 rounded-lg px-3 py-1">
                <div class="w-2 h-2 bg-pink-400 rounded-full"></div>
                <span class="text-purple-200 text-sm font-medium">Phoenix LiveView</span>
              </div>
            </div>
          </div>
          
          <p class="text-purple-400 text-sm">
            © 2024 FinControl. Revolucionando finanças com tecnologia.
          </p>
        </div>
      </footer>
    </div>
    """
  end
end