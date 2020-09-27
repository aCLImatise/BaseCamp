version 1.0

task Libtimsdataso {
  command <<<
    libtimsdata_so
  >>>
  output {
    File out_stdout = stdout()
  }
}