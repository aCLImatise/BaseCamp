version 1.0

task ClustalToAlmapy {
  command <<<
    clustal_to_alma_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}