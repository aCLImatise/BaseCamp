version 1.0

task EditgffRemove {
  input {
    File? attributes
    File? uids
    String? input_file
    String? output_file
  }
  command <<<
    edit_gff remove \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(uids) then ("--uids " +  '"' + uids + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    attributes: "Remove attributes to the GFF file. For example `-a\\ntaxon_id` will remove taxon_id attribute for all\\nannotations. Multiple attributes can be removed, for\\nexample: `-a taxon_id -a gene_id`  [required]"
    uids: "Only edit annotations with `uid` in a file (one per\\nline)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}