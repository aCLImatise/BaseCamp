version 1.0

task GenerateGenesWithNoProteins.py {
  input {
    String inputInput
    String outputOutput
    String headerHeader
  }
  command <<<
    generate_genes_with_no_proteins.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""}
  >>>
}