version 1.0

task Mainpy {
  command <<<
    main_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}