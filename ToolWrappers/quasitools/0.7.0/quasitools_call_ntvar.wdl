version 1.0

task QuasitoolsCallNtvar {
  input {
    File? error_rate
    String bam
    String reference
  }
  command <<<
    quasitools call ntvar \
      ~{bam} \
      ~{reference} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""}
  >>>
  parameter_meta {
    error_rate: "estimated sequencing error rate.\\n-o, --output FILENAME\\n--help                  Show this message and exit.\\n"
    bam: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
    File out_error_rate = "${in_error_rate}"
  }
}