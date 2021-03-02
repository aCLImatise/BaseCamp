version 1.0

task SamtoolsIdxstats {
  input {
    File? input_fmt_option
    Int? threads
    Int? verbosity
    String in_dot_bam
  }
  command <<<
    samtools idxstats \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity\\n"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}