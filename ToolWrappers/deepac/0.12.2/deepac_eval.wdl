version 1.0

task DeepacEval {
  input {
    String? species
    String? reads
    String? ensemble
  }
  command <<<
    deepac eval \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(ensemble) then ("--ensemble " +  '"' + ensemble + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species: "Species-wise evaluation."
    reads: "Read-wise evaluation."
    ensemble: "Simple ensemble evaluation.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}