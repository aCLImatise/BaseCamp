version 1.0

task NebulizerWhoami {
  input {
    String galaxy
  }
  command <<<
    nebulizer whoami \
      ~{galaxy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    galaxy: ""
  }
  output {
    File out_stdout = stdout()
  }
}