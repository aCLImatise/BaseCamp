version 1.0

task Gseapy {
  command <<<
    gseapy
  >>>
  output {
    File out_stdout = stdout()
  }
}