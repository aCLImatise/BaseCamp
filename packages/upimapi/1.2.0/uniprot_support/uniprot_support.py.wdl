version 1.0

task UniprotSupportpy {
  command <<<
    uniprot_support_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/upimapi:1.2.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}