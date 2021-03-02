version 1.0

task MotusSnvCall {
  input {
    Boolean? dir_call_metasnv
    Float? fb
    Float? fd
    Int? fm
    Float? fp
    Float? fc
    Boolean? int_number_default
    Directory? dir_output_directory
    Boolean? keep_directories_produced
    Int? verbose_level_error
  }
  command <<<
    motus snv_call \
      ~{if (dir_call_metasnv) then "-d" else ""} \
      ~{if defined(fb) then ("-fb " +  '"' + fb + '"') else ""} \
      ~{if defined(fd) then ("-fd " +  '"' + fd + '"') else ""} \
      ~{if defined(fm) then ("-fm " +  '"' + fm + '"') else ""} \
      ~{if defined(fp) then ("-fp " +  '"' + fp + '"') else ""} \
      ~{if defined(fc) then ("-fc " +  '"' + fc + '"') else ""} \
      ~{if (int_number_default) then "-t" else ""} \
      ~{if (dir_output_directory) then "-o" else ""} \
      ~{if (keep_directories_produced) then "-K" else ""} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir_call_metasnv: "DIR     Call metaSNV on all bam files in the directory. [Mandatory]"
    fb: "Coverage breadth: minimal horizontal genome coverage percentage per sample per species. Default=80.0"
    fd: "Coverage depth: minimal average vertical genome coverage per sample per species. Default=5.0"
    fm: "Minimum number of samples per species. Default=2"
    fp: "FILTERING STEP II: Required proportion of informative samples (coverage non-zero) per position. Default=0.50"
    fc: "FILTERING STEP II: Minimum coverage per position per sample per species. Default=5.0"
    int_number_default: "INT     Number of threads. Default=1"
    dir_output_directory: "DIR     Output directory. Will fail if already exists. [Mandatory]"
    keep_directories_produced: "Keep all the directories produced by metaSNV. Default is to remove cov, distances, filtered, snpCaller"
    verbose_level_error: "Verbose level: 1=error, 2=warning, 3=message, 4+=debugging. Default=3"
  }
  output {
    File out_stdout = stdout()
    Directory out_dir_output_directory = "${in_dir_output_directory}"
  }
}