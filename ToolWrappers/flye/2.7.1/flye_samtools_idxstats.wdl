version 1.0

task FlyesamtoolsIdxstats {
  input {
    File? input_fmt_option
    Int? threads
    String sam_tools
    String idx_stats
    String in_dot_bam
  }
  command <<<
    flye_samtools idxstats \
      ~{sam_tools} \
      ~{idx_stats} \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    threads: "Number of additional threads to use [0]\\n"
    sam_tools: ""
    idx_stats: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}