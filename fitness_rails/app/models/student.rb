class Student < ApplicationRecord

  before_create :before_create

  def before_create
    aluno = SaudeRuby::Aluno.new(peso: self.weitgh, altura: self.height)
    self.imc_number = aluno.imc
    self.imc_classification = SaudeRuby::IMC.classificacao(self.imc_number)
  end
end
