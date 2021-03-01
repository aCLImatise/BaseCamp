version 1.0

task ManualAug282015pdf {
  command <<<
    Manual_Aug28_2015_pdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}