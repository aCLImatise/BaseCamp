version 1.0

task Fmlrc {
  input {
    Boolean? print_version_number
    Int? small_kmer_size
    Int? large_kmer_size
    Int? number_correction_threads
    Int? index_read_start
    Int? index_read_end
    Int? absolute_minimum_count
    Float? dynamic_minimum_fraction
    Int? set_branch_limit
    Boolean? build_sampled_fmindex
    Int? fmindex_sampled_requires
    Boolean? verbose_output
    String comp_msbwtdotnpy
    String long_reads_dot_fa
    String corrected_reads_dot_fa
  }
  command <<<
    fmlrc \
      ~{comp_msbwtdotnpy} \
      ~{long_reads_dot_fa} \
      ~{corrected_reads_dot_fa} \
      ~{if (print_version_number) then "-v" else ""} \
      ~{if defined(small_kmer_size) then ("-k " +  '"' + small_kmer_size + '"') else ""} \
      ~{if defined(large_kmer_size) then ("-K " +  '"' + large_kmer_size + '"') else ""} \
      ~{if defined(number_correction_threads) then ("-p " +  '"' + number_correction_threads + '"') else ""} \
      ~{if defined(index_read_start) then ("-b " +  '"' + index_read_start + '"') else ""} \
      ~{if defined(index_read_end) then ("-e " +  '"' + index_read_end + '"') else ""} \
      ~{if defined(absolute_minimum_count) then ("-m " +  '"' + absolute_minimum_count + '"') else ""} \
      ~{if defined(dynamic_minimum_fraction) then ("-f " +  '"' + dynamic_minimum_fraction + '"') else ""} \
      ~{if defined(set_branch_limit) then ("-B " +  '"' + set_branch_limit + '"') else ""} \
      ~{if (build_sampled_fmindex) then "-i" else ""} \
      ~{if defined(fmindex_sampled_requires) then ("-F " +  '"' + fmindex_sampled_requires + '"') else ""} \
      ~{if (verbose_output) then "-V" else ""}
  >>>
  parameter_meta {
    print_version_number: "print version number and exit"
    small_kmer_size: "small k-mer size (default: 21)"
    large_kmer_size: "large K-mer size (default: 59), set K=k for single pass"
    number_correction_threads: "number of correction threads"
    index_read_start: "index of read to start with (default: 0)"
    index_read_end: "index of read to end with (default: end of file)"
    absolute_minimum_count: "absolute minimum count to consider a path (default: 5)"
    dynamic_minimum_fraction: "dynamic minimum fraction of median to consider a path (default: .10)"
    set_branch_limit: "set branch limit to <INT>*<k or K> (default: 4)"
    build_sampled_fmindex: "build a sampled FM-index instead of bit arrays"
    fmindex_sampled_requires: "FM-index is sampled every 2**<INT> values (default: 8); requires -i"
    verbose_output: "verbose output"
    comp_msbwtdotnpy: ""
    long_reads_dot_fa: ""
    corrected_reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}