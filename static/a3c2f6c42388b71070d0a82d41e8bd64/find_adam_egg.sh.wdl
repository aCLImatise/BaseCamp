version 1.0

task Findadameggsh {
  command <<<
    find_adam_egg_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}