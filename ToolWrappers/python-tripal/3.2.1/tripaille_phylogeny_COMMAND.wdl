version 1.0

task TripaillePhylogenyCOMMAND {
  input {
    String? args
  }
  command <<<
    tripaille phylogeny COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}