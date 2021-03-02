version 1.0

task GeneOntologyFromBedpy {
  input {
    String? mode
    String exp_matrix
    File path
  }
  command <<<
    geneOntologyFromBed_py \
      ~{exp_matrix} \
      ~{path} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "choose mode"
    exp_matrix: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}