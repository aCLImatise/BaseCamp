version 1.0

task Rcorrector {
  input {
    File? seqfile_path_sequence
    File? paths_pairedend_data
    File? seqfile_path_interleaved
    String? kmer_counts_dumped
    Int? k
    File? od
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
      ~{if defined(paths_pairedend_data) then ("-p " +  '"' + paths_pairedend_data + '"') else ""} \
      ~{if defined(seqfile_path_interleaved) then ("-i " +  '"' + seqfile_path_interleaved + '"') else ""} \
      ~{if defined(kmer_counts_dumped) then ("-c " +  '"' + kmer_counts_dumped + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(od) then ("-od " +  '"' + od + '"') else ""} \
      ~{if defined(threads_use_default) then ("-t " +  '"' + threads_use_default + '"') else ""} \
      ~{if defined(max_cor) then ("-maxcor " +  '"' + max_cor + '"') else ""} \
      ~{if defined(max_cork) then ("-maxcorK " +  '"' + max_cork + '"') else ""} \
      ~{if defined(wk) then ("-wk " +  '"' + wk + '"') else ""} \
      ~{if (stdout) then "-stdout" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    seqfile_path_sequence: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy multiple sequence files"
    paths_pairedend_data: "seq_file_right: the paths to the paired-end data set. Can use multiple -p to specifiy multiple sequence files"
    seqfile_path_interleaved: ": seq_file is the path to the interleaved mate-pair sequence file. Can use multiple -i"
    kmer_counts_dumped: ": the kmer counts dumped by JellyFish"
    k: ""
    od: "(default: ./)"
    threads_use_default: "of threads to use (default: 1)"
    max_cor: ": the maximum number of correction every 100bp (default: 8)"
    max_cork: ": the maximum number of correction within k-bp window (default: 4)"
    wk: ": the proportion of kmers that are used to estimate weak kmer count threshold (default: 0.95)"
    stdout: ": output the corrected sequences to stdout (default: not used)"
    verbose: ": output some correction information to stdout (default: not used)"
  }
  output {
    File out_stdout = stdout()
    File out_od = "${in_od}"
  }
}