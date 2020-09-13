version 1.0

task AlfredCountDna {
  input {
    Boolean? arg_min_quality
    File? arg_coverage_file
    Boolean? arg_count_fragments
    Boolean? arg_window_size
    Boolean? arg_window_offset
    Boolean? arg_windows_chr
    Boolean? arg_interval_file
    String aligned_dot_bam
  }
  command <<<
    alfred count_dna \
      ~{aligned_dot_bam} \
      ~{if (arg_min_quality) then "-m" else ""} \
      ~{if (arg_coverage_file) then "-o" else ""} \
      ~{if (arg_count_fragments) then "-f" else ""} \
      ~{if (arg_window_size) then "-s" else ""} \
      ~{if (arg_window_offset) then "-t" else ""} \
      ~{if (arg_windows_chr) then "-n" else ""} \
      ~{if (arg_interval_file) then "-i" else ""}
  >>>
  parameter_meta {
    arg_min_quality: "[ --map-qual ] arg (=10)          min. mapping quality"
    arg_coverage_file: "[ --outfile ] arg (=\\\"cov.gz\\\")     coverage output file"
    arg_count_fragments: "[ --fragments ] arg               count illumina PE fragments using lower\\nand upper bound on insert size, i.e. -f\\n0,10000"
    arg_window_size: "[ --window-size ] arg (=10000)    window size"
    arg_window_offset: "[ --window-offset ] arg (=10000)  window offset"
    arg_windows_chr: "[ --window-num ] arg (=0)         #windows per chr, used if #n>0"
    arg_interval_file: "[ --interval-file ] arg           interval file, used if present"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_coverage_file = "${in_arg_coverage_file}"
  }
}