version 1.0

task GeneratePairsPseudogenes.py {
  input {
    String inputInput
    String paralogsParalogs
    String outputOutput
  }
  command <<<
    generate_pairs_pseudogenes.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(paralogsParalogs) then ("--paralogs " +  '"' + paralogsParalogs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}