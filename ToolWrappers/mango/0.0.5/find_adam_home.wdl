version 1.0

task Findadamhome {
  command <<<
    find_adam_home
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}