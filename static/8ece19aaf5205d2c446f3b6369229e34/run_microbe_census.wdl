version 1.0

task RunMicrobeCensus.py {
  input {
    Boolean? print_programs_progress
    String? path_external_rapsearch
    String? number_reads_sample
    String? number_threads_use
    Boolean? quit_size_obtained
    String? reads_trimmed_length
    Int? minimum_baselevel_phred
    String? minimum_readlevel_phred
    Boolean? filter_duplicate_reads
    Int? max_percent_unknown
    Boolean? var_10
    String seq_files
    String outfile
  }
  command <<<
    run_microbe_census.py \
      ~{seq_files} \
      ~{outfile} \
      ~{true="-v" false="" print_programs_progress} \
      ~{if defined(path_external_rapsearch) then ("-r " +  '"' + path_external_rapsearch + '"') else ""} \
      ~{if defined(number_reads_sample) then ("-n " +  '"' + number_reads_sample + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{true="-e" false="" quit_size_obtained} \
      ~{if defined(reads_trimmed_length) then ("-l " +  '"' + reads_trimmed_length + '"') else ""} \
      ~{if defined(minimum_baselevel_phred) then ("-q " +  '"' + minimum_baselevel_phred + '"') else ""} \
      ~{if defined(minimum_readlevel_phred) then ("-m " +  '"' + minimum_readlevel_phred + '"') else ""} \
      ~{true="-d" false="" filter_duplicate_reads} \
      ~{if defined(max_percent_unknown) then ("-u " +  '"' + max_percent_unknown + '"') else ""} \
      ~{true="-V" false="" var_10}
  >>>
  parameter_meta {
    print_programs_progress: "print program's progress to stdout (default = False)"
    path_external_rapsearch: "path to external RAPsearch2 v2.15 binary; useful if precompiled RAPsearch2 v2.15 binary included with MicrobeCensus does not work on your system"
    number_reads_sample: "number of reads to sample from SEQFILES and use for average genome size estimation. to use all reads set to 100000000. (default = 2000000)"
    number_threads_use: "number of threads to use for database search (default = 1)"
    quit_size_obtained: "quit after average genome size is obtained and do not estimate the number of genome equivalents in SEQFILES. useful in combination with -n for quick tests (default = False)"
    reads_trimmed_length: "all reads trimmed to this length; reads shorter than this discarded (default = median read length)"
    minimum_baselevel_phred: "minimum base-level PHRED quality score (default = -5; no filtering)"
    minimum_readlevel_phred: "minimum read-level PHRED quality score (default = -5; no filtering)"
    filter_duplicate_reads: "filter duplicate reads (default = False)"
    max_percent_unknown: "max percent of unknown bases per read (default = 100 percent; no filtering)"
    var_10: ""
    seq_files: "path to input metagenome(s); for paired-end metagenomes use commas to specify each file (ex: read_1.fq.gz,read_2.fq.gz); can be FASTQ/FASTA; can be gzip (.gz) or bzip (.bz2) compressed"
    outfile: "path to output file containing results"
  }
}