version 1.0

task QuasitoolsCallCodonvar {
  input {
    Float? error_rate
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    error_rate: "estimated sequencing error rate."
    bam: ""
    reference: ""
    offset: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}