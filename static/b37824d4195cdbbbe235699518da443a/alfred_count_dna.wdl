version 1.0

task AlfredCountDna {
  input {
    Boolean? arg_min_mapping
    File? arg_coverage_output
    Boolean? arg_count_illumina
    Boolean? arg_window_size
    Boolean? arg_window_offset
    Boolean? arg_windows_chr
    Boolean? arg_interval_file
    String aligned_dot_bam
  }
  command <<<
    alfred count_dna \
      ~{aligned_dot_bam} \
      ~{if (arg_min_mapping) then "-m" else ""} \
      ~{if (arg_coverage_output) then "-o" else ""} \
      ~{if (arg_count_illumina) then "-f" else ""} \
      ~{if (arg_window_size) then "-s" else ""} \
      ~{if (arg_window_offset) then "-t" else ""} \
      ~{if (arg_windows_chr) then "-n" else ""} \
      ~{if (arg_interval_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_min_mapping: "[ --map-qual ] arg (=10)          min. mapping quality"
    arg_coverage_output: "[ --outfile ] arg (=\\\"cov.gz\\\")     coverage output file"
    arg_count_illumina: "[ --fragments ] arg               count illumina PE fragments using lower\\nand upper bound on insert size, i.e. -f\\n0,10000"
    arg_window_size: "[ --window-size ] arg (=10000)    window size"
    arg_window_offset: "[ --window-offset ] arg (=10000)  window offset"
    arg_windows_chr: "[ --window-num ] arg (=0)         #windows per chr, used if #n>0"
    arg_interval_file: "[ --interval-file ] arg           interval file, used if present"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_coverage_output = "${in_arg_coverage_output}"
  }
}