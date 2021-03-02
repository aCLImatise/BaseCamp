version 1.0

task FastqAnalyze {
  input {
    Boolean? solexa
    Boolean? illumina
    Boolean? sanger
    Boolean? sangerstyleoutputfastq
    Boolean? stats
    String output_dot
  }
  command <<<
    fastqAnalyze \
      ~{output_dot} \
      ~{if (solexa) then "-solexa" else ""} \
      ~{if (illumina) then "-illumina" else ""} \
      ~{if (sanger) then "-sanger" else ""} \
      ~{if (sangerstyleoutputfastq) then "-o" else ""} \
      ~{if (stats) then "-stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    solexa: "input QV is solexa"
    illumina: "input QV is illumina"
    sanger: "input QV is sanger"
    sangerstyleoutputfastq: "sanger-style-output.fastq"
    stats: ""
    output_dot: "For conversion, you can force the input QV type with:"
  }
  output {
    File out_stdout = stdout()
  }
}