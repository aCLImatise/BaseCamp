version 1.0

task QuasitoolsCallAavar {
  input {
    Float? min_freq
    Float? error_rate
    String bam
    String reference
    Int bed_four_file
    String? variants
  }
  command <<<
    quasitools call aavar \
      ~{bam} \
      ~{reference} \
      ~{bed_four_file} \
      ~{variants} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_freq: "the minimum required frequency."
    error_rate: "estimated sequencing error rate."
    bam: ""
    reference: ""
    bed_four_file: ""
    variants: ""
  }
  output {
    File out_stdout = stdout()
  }
}