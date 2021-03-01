version 1.0

task FlyesamtoolsFlagstat {
  input {
    File? input_fmt_option
    Int? threads
    String sam_tools
    String flag_stat
    String in_dot_bam
  }
  command <<<
    flye_samtools flagstat \
      ~{sam_tools} \
      ~{flag_stat} \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0"
  }
  parameter_meta {
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    threads: "Number of additional threads to use [0]\\n"
    sam_tools: ""
    flag_stat: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}