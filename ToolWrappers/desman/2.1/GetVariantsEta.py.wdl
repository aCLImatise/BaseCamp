version 1.0

task GetVariantsEtapy {
  command <<<
    GetVariantsEta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}