version 1.0

task InclusionLevelpy {
  command <<<
    inclusion_level_py
  >>>
  output {
    File out_stdout = stdout()
  }
}