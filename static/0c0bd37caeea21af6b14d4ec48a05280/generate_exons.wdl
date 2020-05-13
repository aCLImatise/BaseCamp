version 1.0

task GenerateExons.py {
  input {
    String inputInputExons
    String inputInputGenome
    String outputOutput
  }
  command <<<
    generate_exons.py \
      ~{if defined(inputInputExons) then ("--input_exons " +  '"' + inputInputExons + '"') else ""} \
      ~{if defined(inputInputGenome) then ("--input_genome " +  '"' + inputInputGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}