version 1.0

task RmLowCoverageDuplicatedContigspy {
  input {
    Float? cov_t
    Int? len_t
    Boolean? blur
    Boolean? keep_temp
    File? which_blast
    Directory? output_directory_default
    File threads__threadsthreads
  }
  command <<<
    rm_low_coverage_duplicated_contigs_py \
      ~{threads__threadsthreads} \
      ~{if defined(cov_t) then ("--cov-t " +  '"' + cov_t + '"') else ""} \
      ~{if defined(len_t) then ("--len-t " +  '"' + len_t + '"') else ""} \
      ~{if (blur) then "--blur" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cov_t: "With ratio (coverage of query/coverage of subject)\\nbelow which, the query would be exposed to discarded.\\nDefault: 0.12"
    len_t: "With overlap (length of hit of query/ length of query)\\nabove which, the query would be exposed to discarded.\\nDefault: 0.9"
    blur: "Replace hit low-coverage bases with N."
    keep_temp: "Keep temp blast files."
    which_blast: "Assign the path to BLAST binary files if not added to\\nthe path."
    output_directory_default: "Output directory. Default: along with the original"
    threads__threadsthreads: "-t THREADS, --threads=THREADS"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}