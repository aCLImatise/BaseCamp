version 1.0

task PrepareGeneRef.sh {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    prepare_gene_ref.sh \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}