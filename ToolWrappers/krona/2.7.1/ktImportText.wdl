version 1.0

task KtImportText {
  input {
    String text
    String name
  }
  command <<<
    ktImportText \
      ~{text} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    text: "Tab-delimited text file. Each line should be a number followed by a\\nlist of wedges to contribute to (starting from the highest level). If\\nno wedges are listed (and just a quantity is given), it will\\ncontribute to the top level. If the same lineage is listed more than\\nonce, the values will be added. Quantities can be omitted if -q is\\nspecified. Lines beginning with \\\"#\\\" will be ignored. By default,\\nseparate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}