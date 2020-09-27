version 1.0

task Rcorrector {
  input {
    File? seqfile_path_sequence
    Int? threads_use_default
    Int? max_cor
    Int? max_cork
    Float? wk
    Boolean? stdout
    Boolean? verbose
  }
  command <<<
    rcorrector \
      ~{if defined(seqfile_path_sequence) then ("-r " +  '"' + seqfile_path_sequence + '"') else ""} \
      ~{if defined(threads_use_default) then ("-t " +  '"' + threads_use_default + '"') else ""} \
      ~{if defined(max_cor) then ("-maxcor " +  '"' + max_cor + '"') else ""} \
      ~{if defined(max_cork) then ("-maxcorK " +  '"' + max_cork + '"') else ""} \
      ~{if defined(wk) then ("-wk " +  '"' + wk + '"') else ""} \
      ~{if (stdout) then "-stdout" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    seqfile_path_sequence: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy multiple sequence files\\n-p seq_file_left seq_file_right: the paths to the paired-end data set. Can use multiple -p to specifiy multiple sequence files\\n-i seq_file: seq_file is the path to the interleaved mate-pair sequence file. Can use multiple -i\\n-c jf_dump: the kmer counts dumped by JellyFish\\n-k kmer_length"
    threads_use_default: "of threads to use (default: 1)"
    max_cor: ": the maximum number of correction every 100bp (default: 8)"
    max_cork: ": the maximum number of correction within k-bp window (default: 4)"
    wk: ": the proportion of kmers that are used to estimate weak kmer count threshold (default: 0.95)"
    stdout: ": output the corrected sequences to stdout (default: not used)"
    verbose: ": output some correction information to stdout (default: not used)"
  }
  output {
    File out_stdout = stdout()
  }
}