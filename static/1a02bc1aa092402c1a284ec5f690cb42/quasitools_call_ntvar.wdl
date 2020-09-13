version 1.0

task QuasitoolsCallNtvar {
  input {
    Float? error_rate
    File? var_output
    String bam
    String reference
  }
  command <<<
    quasitools call ntvar \
      ~{bam} \
      ~{reference} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    error_rate: "estimated sequencing error rate."
    var_output: ""
    bam: ""
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}