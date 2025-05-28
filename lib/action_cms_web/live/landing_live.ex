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
            <h1 class="mega-title text-white text-glow leading-none">
              <span class="block">SUAS</span>
              <span class="gradient-text block">FINANÇAS</span>
              <span class="block large-title text-purple-200 mt-8">SOB CONTROLE TOTAL</span>
            </h1>
            <p class="big-text text-purple-200 leading-relaxed font-light max-w-6xl mx-auto">
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

          <div class="floating-animation">
            <div class="glass-morphism rounded-3xl shadow-2xl p-4 md:p-8 lg:p-12 glow-effect">
              <!-- Browser Header -->
              <div class="flex items-center space-x-3 mb-8">
                <div class="w-5 h-5 bg-red-400 rounded-full"></div>
                <div class="w-5 h-5 bg-yellow-400 rounded-full"></div>
                <div class="w-5 h-5 bg-green-400 rounded-full"></div>
                <div class="ml-8 flex-1 bg-purple-800/50 rounded-xl h-12 flex items-center px-6">
                  <span class="text-purple-200 text-lg">fincontrol.app/dashboard</span>
                </div>
              </div>
              
              <!-- Cards Grid -->
              <div class="grid grid-cols-1 md:grid-cols-3 gap-6 md:gap-8 mb-12">
                <div class="bg-gradient-to-br from-purple-600 to-purple-700 rounded-3xl p-8 md:p-12 text-white card-hover">
                  <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl md:text-2xl font-medium text-purple-200">Saldo Total</h3>
                    <.icon name="hero-wallet" class="w-8 h-8 text-purple-300" />
                  </div>
                  <p class="text-4xl md:text-6xl font-bold mb-4">R$ 47.520</p>
                  <p class="text-lg text-green-300 flex items-center">
                    <.icon name="hero-arrow-trending-up" class="w-6 h-6 mr-2" />
                    +12.5% este mês
                  </p>
                </div>
                
                <div class="bg-gradient-to-br from-indigo-600 to-indigo-700 rounded-3xl p-8 md:p-12 text-white card-hover">
                  <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl md:text-2xl font-medium text-indigo-200">Gastos</h3>
                    <.icon name="hero-credit-card" class="w-8 h-8 text-indigo-300" />
                  </div>
                  <p class="text-4xl md:text-6xl font-bold mb-4">R$ 8.245</p>
                  <p class="text-lg text-orange-300 flex items-center">
                    <.icon name="hero-arrow-trending-down" class="w-6 h-6 mr-2" />
                    -5.2% vs anterior
                  </p>
                </div>
                
                <div class="bg-gradient-to-br from-pink-600 to-pink-700 rounded-3xl p-8 md:p-12 text-white card-hover">
                  <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl md:text-2xl font-medium text-pink-200">Investimentos</h3>
                    <.icon name="hero-chart-bar-square" class="w-8 h-8 text-pink-300" />
                  </div>
                  <p class="text-4xl md:text-6xl font-bold mb-4">R$ 32.150</p>
                  <p class="text-lg text-green-300 flex items-center">
                    <.icon name="hero-arrow-trending-up" class="w-6 h-6 mr-2" />
                    +18.7% este mês
                  </p>
                </div>
              </div>

              <!-- Chart Area -->
              <div class="bg-gradient-to-r from-purple-800/30 to-indigo-800/30 rounded-3xl p-8 md:p-12 backdrop-blur-sm">
                <h4 class="text-white text-2xl md:text-3xl font-semibold mb-8">Evolução Patrimonial - 12 meses</h4>
                <div class="h-64 md:h-80 flex items-end space-x-2 md:space-x-4">
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 40%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 55%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 30%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 70%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 85%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 65%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 90%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 100%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 95%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 80%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 88%;"></div>
                  <div class="flex-1 bg-gradient-to-t from-purple-500 to-purple-400 rounded-t-2xl" style="height: 100%;"></div>
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
            <h2 class="large-title text-white text-glow leading-none">
              <span class="gradient-text">RECURSOS</span>
              <span class="block">REVOLUCIONÁRIOS</span>
            </h2>
            <p class="big-text text-purple-200 leading-relaxed font-light">
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
            <h2 class="mega-title text-white text-glow leading-none mb-12">
              TRANSFORME
              <span class="gradient-text block">SUA VIDA</span>
              <span class="block large-title mt-8">FINANCEIRA HOJE</span>
            </h2>
            <p class="big-text text-purple-200 mb-16 leading-relaxed font-light">
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
      <footer class="edge-to-edge py-16 border-t border-purple-500/20">
        <div class="flex flex-col md:flex-row justify-between items-center">
          <div class="flex items-center space-x-3 mb-8 md:mb-0">
            <div class="w-12 h-12 bg-gradient-to-r from-purple-400 to-pink-400 rounded-2xl flex items-center justify-center glow-effect">
              <span class="text-white font-bold text-xl">F</span>
            </div>
            <span class="text-white font-bold text-2xl text-glow">FinControl</span>
          </div>
          
          <div class="flex space-x-8 text-purple-200 text-xl">
            <a href="#" class="hover:text-white transition-colors">Privacidade</a>
            <a href="#" class="hover:text-white transition-colors">Termos</a>
            <a href="#" class="hover:text-white transition-colors">Suporte</a>
          </div>
        </div>
        
        <div class="mt-12 pt-8 border-t border-purple-500/20 text-center">
          <p class="text-purple-300 text-xl">
            © 2024 FinControl. Revolucionando finanças com tecnologia.
          </p>
        </div>
      </footer>
    </div>
    """
  end
end