require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "package " do
    it "calculates the correct IMC and classification for SaudeRuby::Aluno" do
      aluno = SaudeRuby::Aluno.new(peso: 117, altura: 1.85)
      imc_number = aluno.imc
      imc_classification = SaudeRuby::IMC.classificacao(imc_number)

      expect(imc_number).to eq(34.19)
      expect(imc_classification).to eq("Obesidade Grau 1")
    end
  end

  describe "model" do
    it "calculates the correct IMC and classification" do
      student = Student.create(weitgh: 117, height: 1.85)

      expect(student.imc_number).to eq(34.19)
      expect(student.imc_classification).to eq("Obesidade Grau 1")
    end
  end
end
