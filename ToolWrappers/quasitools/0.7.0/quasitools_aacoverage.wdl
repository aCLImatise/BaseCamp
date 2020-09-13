version 1.0

task QuasitoolsAacoverage {
  input {
    File? var_output
    String bam
    String reference
    Int bed_four_file
  }
  command <<<
    quasitools aacoverage \
      ~{bam} \
      ~{reference} \
      ~{bed_four_file} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    bam: ""
    reference: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}