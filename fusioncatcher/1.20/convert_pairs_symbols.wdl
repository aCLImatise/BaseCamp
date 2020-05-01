version 1.0

task ConvertPairsSymbols.py {
  input {
    String inputInput
    String outputOutput
    String filterFilter
  }
  command <<<
    convert_pairs_symbols.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}