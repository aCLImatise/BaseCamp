version 1.0

task ExecAnnotation {
  input {
    Boolean? create_alignment
    Boolean? re_annotate
    Boolean? keep_tabular
    Boolean? keep_output
    String query
  }
  command <<<
    exec_annotation \
      ~{query} \
      ~{true="--create-alignment" false="" create_alignment} \
      ~{true="--reannotate" false="" re_annotate} \
      ~{true="--keep-tabular" false="" keep_tabular} \
      ~{true="--keep-output" false="" keep_output}
  >>>
  parameter_meta {
    create_alignment: "Create domain annotation files for each sequence They will be located in the tmp directory Incompatible with -r"
    re_annotate: "Skip hmmsearch Incompatible with --create-alignment"
    keep_tabular: "Neither create tabular.txt nor delete K number files By default, all K number files will be combined into a tabular.txt and delete them"
    keep_output: "Neither create output.txt nor delete K number files By default, all K number files will be combined into a output.txt and delete them Must be with --create-alignment"
    query: ""
  }
}