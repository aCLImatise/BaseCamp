version 1.0

task CONSENTexplode {
  command <<<
    CONSENT_explode
  >>>
  runtime {
    docker: "quay.io/biocontainers/consent:2.2.2--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}