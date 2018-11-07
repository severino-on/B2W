require 'test/unit'
require_relative './script_raiz_quadrada_e_numeros_primo'

class TestSimpleNumber < Test::Unit::TestCase

  def test_raiz
    assert(raiz_quadrada_perfeita?(25))
  end

 def test_numero_primo
 	 assert(primo?(3))
  end

   def test_total_numero_magico
       assert(total_de_numeros_magicos?(9))
   end

end
