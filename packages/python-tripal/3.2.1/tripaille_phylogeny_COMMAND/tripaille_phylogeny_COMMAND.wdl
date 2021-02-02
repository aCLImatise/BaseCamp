version 1.0

task TripaillePhylogenyCOMMAND {
  input {
    String? args
  }
  command <<<
    tripaille phylogeny COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}