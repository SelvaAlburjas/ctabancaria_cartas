class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
  
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
      # Definimos nuestras variables de instancia
      @banco            = nombre_banco
      @numero_de_cuenta = numero_cuenta
      @saldo            = saldo
    end
  
    # 3. Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta.
    def transferir(monto, otra_cuenta)
      # Este método restará del saldo actual el monto
      # 10000 - 3000 = 7000
      @saldo = @saldo - monto
      # aumentará el saldo de la otra cuenta en el mismo monto. (1 Punto)
      #  5000 + 3000 = 8000
      otra_cuenta.saldo = otra_cuenta.saldo + monto
    end
  end
  class Usuario < CuentaBancaria
    attr_accessor :nombre
    attr_accessor :cuenta
    
    def initialize(nombre, cuenta_bancaria=[])

        @nombre = nombre
        @cuenta = cuenta_bancaria
    end
    def saldo_total(total=0)
        largoarray = @cuenta.length
        largoarray.times do |i|
            total += @cuenta[i].saldo
        end
        return "El saldo total de sus cuentas es: #{total}"
    end
end
