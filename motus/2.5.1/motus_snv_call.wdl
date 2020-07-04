version 1.0

task MotusSnvCall {
  input {
    Boolean? dir_call_metasnv
    Float? fb
    Float? fd
    Int? fm
    Float? fp
    Float? fc
    Boolean? int_number_threads
    String? db
    Boolean? dir_output_directory
    Boolean? keep_directories_produced
    Int? verbose_level_error
  }
  command <<<
    motus snv_call \
      ~{true="-d" false="" dir_call_metasnv} \
      ~{if defined(fb) then ("-fb " +  '"' + fb + '"') else ""} \
      ~{if defined(fd) then ("-fd " +  '"' + fd + '"') else ""} \
      ~{if defined(fm) then ("-fm " +  '"' + fm + '"') else ""} \
      ~{if defined(fp) then ("-fp " +  '"' + fp + '"') else ""} \
      ~{if defined(fc) then ("-fc " +  '"' + fc + '"') else ""} \
      ~{true="-t" false="" int_number_threads} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-o" false="" dir_output_directory} \
      ~{true="-K" false="" keep_directories_produced} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""}
  >>>
  parameter_meta {
    dir_call_metasnv: "DIR     Call metaSNV on all bam files in the directory. [Mandatory]"
    fb: "Coverage breadth: minimal horizontal genome coverage percentage per sample per species. Default=80.0"
    fd: "Coverage depth: minimal average vertical genome coverage per sample per species. Default=5.0"
    fm: "Minimum number of samples per species. Default=2"
    fp: "FILTERING STEP II: Required proportion of informative samples (coverage non-zero) per position. Default=0.50"
    fc: "FILTERING STEP II: Minimum coverage per position per sample per species. Default=5.0"
    int_number_threads: "INT     Number of threads. Default=1"
    db: "Provide a database directory"
    dir_output_directory: "DIR     Output directory. Will fail if already exists. [Mandatory]"
    keep_directories_produced: "Keep all the directories produced by metaSNV. Default is to remove cov, distances, filtered, snpCaller"
    verbose_level_error: "Verbose level: 1=error, 2=warning, 3=message, 4+=debugging. Default=3"
  }
}