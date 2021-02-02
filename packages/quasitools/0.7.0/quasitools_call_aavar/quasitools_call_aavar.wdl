version 1.0

task QuasitoolsCallAavar {
  input {
    Float? min_freq
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
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""}
  >>>
  parameter_meta {
    min_freq: "the minimum required frequency.\\n-e, --error_rate FLOAT  estimated sequencing error rate.\\n-o, --output FILENAME\\n--help                  Show this message and exit.\\n"
    bam: ""
    reference: ""
    bed_four_file: ""
    variants: ""
  }
  output {
    File out_stdout = stdout()
  }
}