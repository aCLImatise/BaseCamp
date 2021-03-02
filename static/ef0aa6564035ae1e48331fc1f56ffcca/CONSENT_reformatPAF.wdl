version 1.0

task CONSENTreformatPAF {
  command <<<
    CONSENT_reformatPAF
  >>>
  runtime {
    docker: "quay.io/biocontainers/consent:2.2.2--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}