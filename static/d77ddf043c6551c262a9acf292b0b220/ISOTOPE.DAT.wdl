version 1.0

task ISOTOPEDAT {
  command <<<
    ISOTOPE_DAT
  >>>
  output {
    File out_stdout = stdout()
  }
}