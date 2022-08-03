require_relative 'cuenta_bancaria'

mi_cuenta = CuentaBancaria.new('Banco de la República', 675849, 10000)
cuenta_cliente = CuentaBancaria.new('Banco Estado', 123000, 5000)

# si mi cuenta es la que hace la transferencia a cliente
mi_cuenta.transferir(3000, cuenta_cliente)

# si el cliente transfiere dinero a mi cuenta
# cuenta_cliente.transferir(5000, mi_cuenta)

puts "Saldo de mi cuenta #{mi_cuenta.saldo}"
puts "Saldo de cliente #{cuenta_cliente.saldo}"


# ================= PUNTO 6 ==============

#require_relative 'usuario'

cuenta_ahorros1   = CuentaBancaria.new('Banco Estado', 1234, 5000)
cuenta_ahorros2   = CuentaBancaria.new('Banco Estado', 5678, 1000)
cuenta_corriente1 = CuentaBancaria.new('Banco Estado', 7890, 20000)

cuentas = [cuenta_ahorros1, cuenta_ahorros2, cuenta_corriente1]
cesar = Usuario.new("cesar_guevara", cuentas)

puts "Saldo total #{cesar.saldo_total}"