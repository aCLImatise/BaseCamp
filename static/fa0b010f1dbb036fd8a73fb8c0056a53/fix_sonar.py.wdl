version 1.0

task FixSonarpy {
  command <<<
    fix_sonar_py
  >>>
  output {
    File out_stdout = stdout()
  }
}