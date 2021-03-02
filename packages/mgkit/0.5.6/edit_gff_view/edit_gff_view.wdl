version 1.0

task EditgffView {
  input {
    Boolean? keep_empty
    File? attributes
    String? separator
    String? input_file
    String? output_file
  }
  command <<<
    edit_gff view \
      ~{input_file} \
      ~{output_file} \
      ~{if (keep_empty) then "--keep-empty" else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    keep_empty: "Keep annotations where not all attributes were found"
    attributes: "Attributes of GFF file to print. For example `-a\\ntaxon_id` will print `taxon_id` for all annotations.\\nMultiple attributes can be printed, for example: `-a\\ntaxon_id -a gene_id`  [required]"
    separator: "Fields separator, default to `TAB`"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}