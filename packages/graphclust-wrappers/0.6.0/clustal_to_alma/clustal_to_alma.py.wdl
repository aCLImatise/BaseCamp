version 1.0

task ClustalToAlmapy {
  command <<<
    clustal_to_alma_py
  >>>
  output {
    File out_stdout = stdout()
  }
}