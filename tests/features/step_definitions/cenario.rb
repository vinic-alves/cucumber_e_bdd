Dado('eu tenho {int} laranjas.') do |valor1|
    puts valor1
   @laranjas = valor1
end
    
Quando('eu como {int} laranjas.') do |valor2|
    puts valor2
   @comer = valor2
   @resultado = @laranjas - @comer
end
    
Então('eu vejo quantas laranjas sobraram.') do
    puts "o resultado da conta #{@laranjas} - #{@comer} é #{@resultado}"
    expect(@resultado).to eq 8
end


Quando('eu compro {int} laranjas.') do |valor3|
    puts valor3
   @comprar = valor3
   @compraTotal = @laranjas + @comprar
    
end

Então('eu vejo quantas laranjas eu tenho.') do
    puts @compraTotal
    expect(@compraTotal).to eq 15
end