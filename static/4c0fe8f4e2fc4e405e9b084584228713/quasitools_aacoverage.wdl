version 1.0

task QuasitoolsAacoverage {
  input {
    String bam
    String reference
    Int bed_four_file
  }
  command <<<
    quasitools aacoverage \
      ~{bam} \
      ~{reference} \
      ~{bed_four_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: ""
    reference: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}