version 1.0

task QuasitoolsAacoverage {
  input {
    File? _help_show
    String bam
    String reference
    Int bed_four_file
  }
  command <<<
    quasitools aacoverage \
      ~{bam} \
      ~{reference} \
      ~{bed_four_file} \
      ~{if defined(_help_show) then ("--output " +  '"' + _help_show + '"') else ""}
  >>>
  parameter_meta {
    _help_show: "--help                 Show this message and exit.\\n"
    bam: ""
    reference: ""
    bed_four_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}