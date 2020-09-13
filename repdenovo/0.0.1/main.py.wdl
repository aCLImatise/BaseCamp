version 1.0

task Mainpy {
  command <<<
    main_py
  >>>
  output {
    File out_stdout = stdout()
  }
}