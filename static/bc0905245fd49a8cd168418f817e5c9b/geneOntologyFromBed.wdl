version 1.0

task GeneOntologyFromBed.py {
  input {
    String? mode
    String exp_matrix
    File path
  }
  command <<<
    geneOntologyFromBed.py \
      ~{exp_matrix} \
      ~{path} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  parameter_meta {
    mode: "choose mode"
    exp_matrix: ""
    path: ""
  }
}