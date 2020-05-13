version 1.0

task GenerateGenesSymbols.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_genes_symbols.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}