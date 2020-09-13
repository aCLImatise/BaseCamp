version 1.0

task TaxonFilterpyDepleteBlastn {
  input {
    Int? threads
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_fast_q
    String out_fast_q
    String ref_dbs
  }
  command <<<
    taxon_filter_py deplete_blastn \
      ~{in_fast_q} \
      ~{out_fast_q} \
      ~{ref_dbs} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    threads: "The number of threads to use in running blastn."
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_fast_q: "Input fastq file."
    out_fast_q: "Output fastq file with matching reads removed."
    ref_dbs: "One or more reference databases for blast."
  }
  output {
    File out_stdout = stdout()
  }
}