
class Carta
    attr_accessor :numero, :pinta
  
    def initialize(numero, pinta)
      # Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'
      @numero = numero
      @pinta = pinta
    end
  
    def imprimir
      "#{@numero}#{@pinta}"
    end
  end
  
  pintas = ['♦️','♠️','♣️','❤️']
  cartas = []
  5.times do 
  
    numero = rand(1..13)
    carta_nueva = Carta.new(numero, pintas.sample)
    # cartas << carta_nueva
    cartas.push carta_nueva
  
  end
  
  def barajar
    @carta.shuffle!()
    end

    def sacar
        @carta.pop()
    end

    def repartir_mano
        @carta.shift(5)
    end

  cartas.each do |carta|
    print carta.imprimir
    puts
  end


  