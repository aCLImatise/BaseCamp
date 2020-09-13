version 1.0

task Versionpy {
  command <<<
    version_py
  >>>
  output {
    File out_stdout = stdout()
  }
}