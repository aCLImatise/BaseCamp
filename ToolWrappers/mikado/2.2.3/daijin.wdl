version 1.0

task Daijin {
  input {
    String a
    String directed
    String acyclic
    String pipeline
    String for
    String gene
    String model
    String reconstruction
    String from
    String rna
    String seq
    String data_dot
  }
  command <<<
    daijin \
      ~{a} \
      ~{directed} \
      ~{acyclic} \
      ~{pipeline} \
      ~{for} \
      ~{gene} \
      ~{model} \
      ~{reconstruction} \
      ~{from} \
      ~{rna} \
      ~{seq} \
      ~{data_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0"
  }
  parameter_meta {
    a: ""
    directed: ""
    acyclic: ""
    pipeline: ""
    for: ""
    gene: ""
    model: ""
    reconstruction: ""
    from: ""
    rna: ""
    seq: ""
    data_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}