version 1.0

task QuasitoolsCallNtvar {
  input {
    Float? error_rate
    String bam
    String reference
  }
  command <<<
    quasitools call ntvar \
      ~{bam} \
      ~{reference} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    error_rate: "estimated sequencing error rate."
    bam: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}