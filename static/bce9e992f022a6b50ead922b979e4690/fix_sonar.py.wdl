version 1.0

task FixSonarpy {
  command <<<
    fix_sonar_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}