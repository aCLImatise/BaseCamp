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
  parameter_meta {
    text: "Tab-delimited text file. Each line should be a number followed by a list of wedges to contribute to (starting from the highest level). If no wedges are listed (and just a quantity is given), it will contribute to the top level. If the same lineage is listed more than once, the values will be added. Quantities can be omitted if -q is specified. Lines beginning with \"#\" will be ignored. By default, separate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}