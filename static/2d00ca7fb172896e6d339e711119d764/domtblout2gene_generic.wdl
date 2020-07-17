version 1.0

task Domtblout2geneGeneric.py {
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
    File files
  }
  command <<<
    domtblout2gene_generic.py \
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
}