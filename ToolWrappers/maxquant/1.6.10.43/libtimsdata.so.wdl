version 1.0

task Libtimsdataso {
  command <<<
    libtimsdata_so
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}