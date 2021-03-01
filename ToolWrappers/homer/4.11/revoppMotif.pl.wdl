version 1.0

task RevoppMotifpl {
  input {
    File motif_file
  }
  command <<<
    revoppMotif_pl \
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