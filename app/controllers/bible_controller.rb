class BibleController < ApplicationController

  def select
    id = rand(1..31102)
    @versiculo = Versiculo.find(id)
    Historico.create(versiculo_id: id)
  end

  def read
    @versiculo = Historico.last.versiculo.texto.split
  end

end
