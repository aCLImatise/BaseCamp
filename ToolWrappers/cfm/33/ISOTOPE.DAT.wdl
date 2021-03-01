version 1.0

task ISOTOPEDAT {
  command <<<
    ISOTOPE_DAT
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}