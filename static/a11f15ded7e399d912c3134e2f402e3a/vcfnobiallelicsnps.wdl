version 1.0

task Vcfnobiallelicsnps {
  command <<<
    vcfnobiallelicsnps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}