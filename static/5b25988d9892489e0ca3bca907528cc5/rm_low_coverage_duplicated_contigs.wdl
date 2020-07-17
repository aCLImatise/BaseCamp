version 1.0

task RmLowCoverageDuplicatedContigs.py {
  input {
    String? cov_t
    Int? len_t
    Boolean? blur
    Boolean? keep_temp
    String? which_blast
    String? output_directory_default
    String? threads
  }
  command <<<
    rm_low_coverage_duplicated_contigs.py \
      ~{if defined(cov_t) then ("--cov-t " +  '"' + cov_t + '"') else ""} \
      ~{if defined(len_t) then ("--len-t " +  '"' + len_t + '"') else ""} \
      ~{true="--blur" false="" blur} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    cov_t: "With ratio (coverage of query/coverage of subject) below which, the query would be exposed to discarded. Default: 0.12"
    len_t: "With overlap (length of hit of query/ length of query) above which, the query would be exposed to discarded. Default: 0.9"
    blur: "Replace hit low-coverage bases with N."
    keep_temp: "Keep temp blast files."
    which_blast: "Assign the path to BLAST binary files if not added to the path."
    output_directory_default: "Output directory. Default: along with the original file"
    threads: "Threads of blastn."
  }
}