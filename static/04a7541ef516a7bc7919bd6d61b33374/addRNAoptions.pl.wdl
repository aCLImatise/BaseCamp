version 1.0

task AddRNAoptionspl {
  input {
    String perl
  }
  command <<<
    addRNAoptions_pl \
      ~{perl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    perl: ""
  }
  output {
    File out_stdout = stdout()
  }
}