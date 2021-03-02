version 1.0

task RunMicrobeCensuspy {
  input {
    Boolean? print_programs_progress
    File? path_external_rapsearch
    Int? number_reads_sample
    Int? number_threads_use
    Boolean? quit_size_obtained
    String? reads_trimmed_length
    Int? minimum_baselevel_phred
    Int? minimum_readlevel_phred
    Boolean? filter_duplicate_reads
    Int? max_percent_filtering
    Boolean? var_10
    String seq_files
    String outfile
  }
  command <<<
    run_microbe_census_py \
      ~{seq_files} \
      ~{outfile} \
      ~{if (print_programs_progress) then "-v" else ""} \
      ~{if defined(path_external_rapsearch) then ("-r " +  '"' + path_external_rapsearch + '"') else ""} \
      ~{if defined(number_reads_sample) then ("-n " +  '"' + number_reads_sample + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if (quit_size_obtained) then "-e" else ""} \
      ~{if defined(reads_trimmed_length) then ("-l " +  '"' + reads_trimmed_length + '"') else ""} \
      ~{if defined(minimum_baselevel_phred) then ("-q " +  '"' + minimum_baselevel_phred + '"') else ""} \
      ~{if defined(minimum_readlevel_phred) then ("-m " +  '"' + minimum_readlevel_phred + '"') else ""} \
      ~{if (filter_duplicate_reads) then "-d" else ""} \
      ~{if defined(max_percent_filtering) then ("-u " +  '"' + max_percent_filtering + '"') else ""} \
      ~{if (var_10) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_programs_progress: "print program's progress to stdout (default = False)"
    path_external_rapsearch: "path to external RAPsearch2 v2.15 binary; useful if\\nprecompiled RAPsearch2 v2.15 binary included with\\nMicrobeCensus does not work on your system"
    number_reads_sample: "number of reads to sample from SEQFILES and use for\\naverage genome size estimation. to use all reads set\\nto 100000000. (default = 2000000)"
    number_threads_use: "number of threads to use for database search (default\\n= 1)"
    quit_size_obtained: "quit after average genome size is obtained and do not\\nestimate the number of genome equivalents in SEQFILES.\\nuseful in combination with -n for quick tests (default\\n= False)"
    reads_trimmed_length: "all reads trimmed to this length; reads shorter than\\nthis discarded (default = median read length)"
    minimum_baselevel_phred: "minimum base-level PHRED quality score (default = -5;\\nno filtering)"
    minimum_readlevel_phred: "minimum read-level PHRED quality score (default = -5;\\nno filtering)"
    filter_duplicate_reads: "filter duplicate reads (default = False)"
    max_percent_filtering: "max percent of unknown bases per read (default = 100\\npercent; no filtering)\\n"
    var_10: ""
    seq_files: "path to input metagenome(s); for paired-end\\nmetagenomes use commas to specify each file (ex:\\nread_1.fq.gz,read_2.fq.gz); can be FASTQ/FASTA; can be\\ngzip (.gz) or bzip (.bz2) compressed"
    outfile: "path to output file containing results"
  }
  output {
    File out_stdout = stdout()
  }
}