# ● Crear la clase carta con los atributos numero y pinta. (1 Punto)
class Carta
    # ● Agregar los getters y setters a ambos atributos.(1 Punto)
    attr_accessor :numero, :pinta
    attr_reader :naipes, :pintas
    # ● Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la
    # pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D',
    # Espada: 'E' o Trébol: 'T'. (2 Puntos)
    def initialize(numero, pinta)
        @naipes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        @pintas = ['C', 'D', 'E', 'T']
        raise RangeError, "El número debe estar entre 1 y 13" if @naipes.include?(numero)
        raise RangeError, "La pinta debe ser: C, D, E o T" if !@pintas.include?(pinta) 
        @numero = numero
        @pinta = pinta
    end

    def repartir
        @mazo = @naipes.product(@pintas).shuffle
        @repartir = @mazo.pop(5)
    end
end
# ● Tip 1: Para escoger un número al azar ocupar
# Random.rand(rango_inferior, rango_superior).
nro_carta = [rand(1..13)]
# ● Tip 2: Agregar las pintas posibles en un arreglo y ocupar el método .sample.
pintas =['C', 'D', 'E', 'T'].sample
# ● Probar la clase creando un arreglo con 5 cartas.(1 Punto)
carta = Carta.new(nro_carta, pintas)
print carta.repartir
print "\n"
