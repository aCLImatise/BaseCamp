version 1.0

task ConvertPairsSymbols.py {
  input {
    String? input_file_containing_symbols
    String? output_file_contain
    String? filter
  }
  command <<<
    convert_pairs_symbols.py \
      ~{if defined(input_file_containing_symbols) then ("--input " +  '"' + input_file_containing_symbols + '"') else ""} \
      ~{if defined(output_file_contain) then ("--output " +  '"' + output_file_contain + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing_symbols: "The input file containing on each line two gene symbols separated by tab."
    output_file_contain: "The output file which will contain the Ensembl gene ids, where are two genes ids per line separated by tab."
    filter: "Input file containing the Ensembl Ids of genes pairs which should be removed, where are two genes ids per line separated by tab."
  }
}