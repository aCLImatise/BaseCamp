version 1.0

task MummerSNPReaderpy {
  command <<<
    MummerSNPReader_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}