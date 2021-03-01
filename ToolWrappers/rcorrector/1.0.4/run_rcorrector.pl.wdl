version 1.0

task RunRcorrectorpl {
  input {
    String? comma_separated_files
    Int? comma_separated_first
    Int? comma_separated_second
    String? comma_sperated_files
    Int? max_cork
    Float? wk
    Int? ek
    Boolean? stdout
    Boolean? verbose
    Int? stage
    String perl
  }
  command <<<
    run_rcorrector_pl \
      ~{perl} \
      ~{if defined(comma_separated_files) then ("-s " +  '"' + comma_separated_files + '"') else ""} \
      ~{if defined(comma_separated_first) then ("-1 " +  '"' + comma_separated_first + '"') else ""} \
      ~{if defined(comma_separated_second) then ("-2 " +  '"' + comma_separated_second + '"') else ""} \
      ~{if defined(comma_sperated_files) then ("-i " +  '"' + comma_sperated_files + '"') else ""} \
      ~{if defined(max_cork) then ("-maxcorK " +  '"' + max_cork + '"') else ""} \
      ~{if defined(wk) then ("-wk " +  '"' + wk + '"') else ""} \
      ~{if defined(ek) then ("-ek " +  '"' + ek + '"') else ""} \
      ~{if (stdout) then "-stdout" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(stage) then ("-stage " +  '"' + stage + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comma_separated_files: ": comma separated files for single-end data sets"
    comma_separated_first: ": comma separated files for the first mate in the paried-end data sets"
    comma_separated_second: ": comma separated files for the second mate in the paired-end data sets"
    comma_sperated_files: ": comma sperated files for interleaved paired-end data sets"
    max_cork: ": the maximum number of correction within k-bp window (default: 4)"
    wk: ": the proportion of kmers that are used to estimate weak kmer count threshold, lower for more divergent genome (default: 0.95)"
    ek: ": does not affect the correctness of program but affect the memory usage (default: 100000000)"
    stdout: ": output the corrected reads to stdout (default: not used)"
    verbose: ": output some correction information to stdout (default: not used)"
    stage: ": start from which stage (default: 0)\\n0-start from begining(storing kmers in bloom filter);\\n1-start from count kmers showed up in bloom filter;\\n2-start from dumping kmer counts into a jf_dump file;\\n3-start from error correction.\\n"
    perl: ""
  }
  output {
    File out_stdout = stdout()
  }
}