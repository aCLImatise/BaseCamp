version 1.0

task GetVariantsEtapy {
  command <<<
    GetVariantsEta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}