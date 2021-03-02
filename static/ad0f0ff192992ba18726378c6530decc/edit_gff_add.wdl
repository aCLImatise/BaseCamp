version 1.0

task EditgffAdd {
  input {
    File? attributes
    Boolean? overwrite
    Boolean? only_edited
    File? uids
    String? input_file
    String? output_file
  }
  command <<<
    edit_gff add \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (only_edited) then "--only-edited" else ""} \
      ~{if defined(uids) then ("--uids " +  '"' + uids + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    attributes: "Add attributes to the GFF file. For example `-a\\ntaxon_id 2` will add taxon_id attribute with a\\nvalue of 2 to all annotations. Multiple attributes\\ncan be set, for example: `-a taxon_id 2 -a gene_id\\nTEST`  [required]"
    overwrite: "Overwrite the attributes if present"
    only_edited: "Only output edited annotations"
    uids: "Only edit annotations with `uid` in a file (one\\nper line)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}