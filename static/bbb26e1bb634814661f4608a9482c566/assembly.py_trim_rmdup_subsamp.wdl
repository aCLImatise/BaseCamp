version 1.0

task AssemblypyTrimRmdupSubsamp {
  input {
    Int? n_reads
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_bam
    String clip_db
    String out_bam
  }
  command <<<
    assembly_py trim_rmdup_subsamp \
      ~{in_bam} \
      ~{clip_db} \
      ~{out_bam} \
      ~{if defined(n_reads) then ("--n_reads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_reads: "Subsample reads to no more than this many individual\\nreads. Note that paired reads are given priority, and\\nunpaired reads are included to reach the count if\\nthere are too few paired reads to reach n_reads.\\n(default 100000)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_bam: "Input reads, unaligned BAM format."
    clip_db: "Trimmomatic clip DB."
    out_bam: "Output reads, unaligned BAM format (currently, read\\ngroups and other header information are destroyed in\\nthis process)."
  }
  output {
    File out_stdout = stdout()
  }
}