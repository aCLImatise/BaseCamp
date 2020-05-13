version 1.0

task GenerateChromLens.py {
  input {
    String inputInputGenome
    String outputOutput
  }
  command <<<
    generate_chrom_lens.py \
      ~{if defined(inputInputGenome) then ("--input_genome " +  '"' + inputInputGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}