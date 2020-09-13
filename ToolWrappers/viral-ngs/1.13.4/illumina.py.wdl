version 1.0

task Illuminapy {
  command <<<
    illumina_py
  >>>
  output {
    File out_stdout = stdout()
  }
}