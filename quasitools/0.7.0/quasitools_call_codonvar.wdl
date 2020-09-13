version 1.0

task QuasitoolsCallCodonvar {
  input {
    Float? error_rate
    File? var_output
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
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    error_rate: "estimated sequencing error rate."
    var_output: ""
    bam: ""
    reference: ""
    offset: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}