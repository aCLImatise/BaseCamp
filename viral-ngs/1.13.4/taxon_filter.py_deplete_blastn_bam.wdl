version 1.0

task TaxonFilterpyDepleteBlastnBam {
  input {
    Int? threads
    Int? chunksize
    Int? jvm_memory
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String use_blastn_remove
    String in_bam
    String ref_dbs
    String output_bam_file
  }
  command <<<
    taxon_filter_py deplete_blastn_bam \
      ~{use_blastn_remove} \
      ~{in_bam} \
      ~{ref_dbs} \
      ~{output_bam_file} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(chunksize) then ("--chunkSize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    threads: "The number of threads to use in running blastn."
    chunksize: "FASTA chunk size (default: 1000000)"
    jvm_memory: "JVM virtual memory size (default: 4g)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    use_blastn_remove: "Use blastn to remove reads that match at least one of the specified databases."
    in_bam: "Input BAM file."
    ref_dbs: "One or more reference databases for blast."
    output_bam_file: "Output BAM file with matching reads removed."
  }
  output {
    File out_stdout = stdout()
  }
}