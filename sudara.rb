# SUDARA
# S: Segement
# U: 
# D: Decentralized (非中央集権)
# A: Agreement (合意)
# R: Routing 
# A: algorithm
# だらだらとしていて、おわりどきを見失った組織のための、合意形成アルゴリズム。
#!/Users/reo/.rbenv/shims/ruby
require "pp"

class Link
  def initialize(router1, router2, bandwidth)
    @routers [router1, router2]
    @bandwith = bandwith
  end
end

class Router
  def initialize()
    @contribution = 0
    @links = [] #各リンクには帯域があるので
    @traffic_demands = [] #トラフィック要求
  end

  def add_link(link)
    @links.push link
  end

  def add_traffic_demand(traffic_demand)
    @traffic_demands.push traffic_demand
  end
    
  def show
    pp @links
  end
end

class TrafficDemand
  def initialized()
    @src 
    @dst
    @type # "NR":normal routing, "SR":segment routing
    @segments = []
  end
end

R1 = Router.new
R2 = Router.new
R3 = Router.new

L12 = Link.new(R1, R2, 1000)
L23 = Link.new(R2, R3, 1000)
L13 = Link.new(R1, R3, 1000)

R1.add_link(L12)
R1.add_link(L13)
R2.add_link(L12)
R2.add_link(L23)
R3.add_link(L13)
R3.add_link(L23)

R1.show
R2.show
R3.show
