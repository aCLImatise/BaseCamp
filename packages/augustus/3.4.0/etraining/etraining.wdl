version 1.0

task Etraining {
  input {
    String? species
    String train_filename
  }
  command <<<
    etraining \
      ~{train_filename} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    species: ""
    train_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}