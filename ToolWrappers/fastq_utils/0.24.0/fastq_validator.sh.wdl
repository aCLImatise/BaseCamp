version 1.0

task FastqValidatorsh {
  command <<<
    fastq_validator_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}