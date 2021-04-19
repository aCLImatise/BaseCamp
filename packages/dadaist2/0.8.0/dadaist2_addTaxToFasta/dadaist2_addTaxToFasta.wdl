version 1.0

task Dadaist2addTaxToFasta {
  command <<<
    dadaist2_addTaxToFasta
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}