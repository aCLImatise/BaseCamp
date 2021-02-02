version 1.0

task SamtoolsFlagstat {
  input {
    File? input_fmt_option
    Int? threads
    Int? verbosity
    String? output_fmt
    String in_dot_bam
  }
  command <<<
    samtools flagstat \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""}
  >>>
  parameter_meta {
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (json, tsv)\\n"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}