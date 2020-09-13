version 1.0

task MummerSNPReaderpy {
  command <<<
    MummerSNPReader_py
  >>>
  output {
    File out_stdout = stdout()
  }
}