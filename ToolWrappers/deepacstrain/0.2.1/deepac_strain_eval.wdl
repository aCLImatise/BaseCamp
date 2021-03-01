version 1.0

task DeepacstrainEval {
  input {
    String? species
    String? reads
    String? ensemble
    String deep_ac
    String eval
  }
  command <<<
    deepac_strain eval \
      ~{deep_ac} \
      ~{eval} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(ensemble) then ("--ensemble " +  '"' + ensemble + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    species: "Species-wise evaluation."
    reads: "Read-wise evaluation."
    ensemble: "Simple ensemble evaluation.\\n"
    deep_ac: ""
    eval: ""
  }
  output {
    File out_stdout = stdout()
  }
}