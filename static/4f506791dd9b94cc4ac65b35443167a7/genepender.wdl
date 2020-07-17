version 1.0

task Genepender {
  input {
    String gene_map
  }
  command <<<
    genepender \
      ~{gene_map}
  >>>
  parameter_meta {
    gene_map: ""
  }
}