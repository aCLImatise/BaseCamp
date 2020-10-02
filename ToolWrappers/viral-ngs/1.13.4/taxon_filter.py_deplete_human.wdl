version 1.0

task TaxonFilterpyDepleteHuman {
  input {
    Array[String] bm_tagger_dbs
    String? tax_filt_bam
    String? last_db
    Int? threads
    Int? jvm_memory
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_bam
    String revert_bam
    String bm_tagger_bam
    String rmd_up_bam
    String removal_dot
  }
  command <<<
    taxon_filter_py deplete_human \
      ~{in_bam} \
      ~{revert_bam} \
      ~{bm_tagger_bam} \
      ~{rmd_up_bam} \
      ~{removal_dot} \
      ~{if defined(bm_tagger_dbs) then ("--bmtaggerDbs " +  '"' + bm_tagger_dbs + '"') else ""} \
      ~{if defined(tax_filt_bam) then ("--taxfiltBam " +  '"' + tax_filt_bam + '"') else ""} \
      ~{if defined(last_db) then ("--lastDb " +  '"' + last_db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  parameter_meta {
    bm_tagger_dbs: "BLASTDBS [BLASTDBS ...]\\n[--lastDb LASTDB]\\n[--threads THREADS]\\n[--JVMmemory JVMMEMORY]\\n[--loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL,EXCEPTION}]\\n[--version]\\n[--tmp_dir TMP_DIR]\\n[--tmp_dirKeep]\\ninBam [revertBam] bmtaggerBam\\nrmdupBam blastnBam"
    tax_filt_bam: "Output BAM: blastnBam run through taxonomic selection\\nvia LASTAL."
    last_db: "One reference database for last (required if"
    threads: "The number of threads to use in running blastn."
    jvm_memory: "JVM virtual memory size for Picard FilterSamReads\\n(default: 4g)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_bam: "Input BAM file."
    revert_bam: "Output BAM: read markup reverted with Picard."
    bm_tagger_bam: "Output BAM: depleted of human reads with BMTagger."
    rmd_up_bam: "Output BAM: bmtaggerBam run through M-Vicuna duplicate"
    removal_dot: "blastnBam             Output BAM: rmdupBam run through another depletion of"
  }
  output {
    File out_stdout = stdout()
  }
}