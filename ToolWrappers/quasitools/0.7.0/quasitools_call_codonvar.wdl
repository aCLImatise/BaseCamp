version 1.0

task QuasitoolsCallCodonvar {
  input {
    File? error_rate
    String bam
    String reference
    String offset
    Int bed_four_file
  }
  command <<<
    quasitools call codonvar \
      ~{bam} \
      ~{reference} \
      ~{offset} \
      ~{bed_four_file} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""}
  >>>
  parameter_meta {
    error_rate: "estimated sequencing error rate.\\n-o, --output FILENAME\\n--help                  Show this message and exit.\\n"
    bam: ""
    reference: ""
    offset: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_error_rate = "${in_error_rate}"
  }
}