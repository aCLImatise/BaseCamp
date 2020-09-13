version 1.0

task Domtblout2geneGenericpy {
  input {
    String generate
    String summary
    String matrix
    String from
    String the
    String filtered
    String best
    String hmmer
    String annotation
    String files
  }
  command <<<
    domtblout2gene_generic_py \
      ~{generate} \
      ~{summary} \
      ~{matrix} \
      ~{from} \
      ~{the} \
      ~{filtered} \
      ~{best} \
      ~{hmmer} \
      ~{annotation} \
      ~{files}
  >>>
  parameter_meta {
    generate: ""
    summary: ""
    matrix: ""
    from: ""
    the: ""
    filtered: ""
    best: ""
    hmmer: ""
    annotation: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}