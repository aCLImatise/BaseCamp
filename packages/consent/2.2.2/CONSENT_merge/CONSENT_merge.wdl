version 1.0

task CONSENTmerge {
  command <<<
    CONSENT_merge
  >>>
  runtime {
    docker: "quay.io/biocontainers/consent:2.2.2--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}