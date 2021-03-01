version 1.0

task Motif2Jasparpl {
  input {
    File motif_file
  }
  command <<<
    motif2Jaspar_pl \
      ~{motif_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}