version 1.0

task Ff2ftblpy {
  command <<<
    ff2ftbl_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}