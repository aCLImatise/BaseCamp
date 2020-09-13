version 1.0

task Radicalutilsmongodbpy {
  command <<<
    radical_utils_mongodb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}