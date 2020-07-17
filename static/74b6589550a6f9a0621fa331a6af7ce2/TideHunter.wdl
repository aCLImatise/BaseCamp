version 1.0

task TideHunter {
  input {
    Int? km_er_length
    Int? window_size
    Boolean? step_size
    Boolean? hpc_km_er
    Boolean? min_copy
    Boolean? max_diver_g
    Boolean? min_period
    Boolean? max_period
    Boolean? match
    Int? mismatch
    Int? gap_open
    Boolean? gap_ext
    Boolean? five_prime
    String? three_prime
    String? ada_mat_rat
    Boolean? str_output_file
    Boolean? unit_seq
    Boolean? longest
    Boolean? full_len
    Boolean? out_fmt
    Boolean? thread
    String in_dot_f_a_slash_fq
  }
  command <<<
    TideHunter \
      ~{in_dot_f_a_slash_fq} \
      ~{if defined(km_er_length) then ("--kmer-length " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{true="--step-size" false="" step_size} \
      ~{true="--HPC-kmer" false="" hpc_km_er} \
      ~{true="--min-copy" false="" min_copy} \
      ~{true="--max-diverg" false="" max_diver_g} \
      ~{true="--min-period" false="" min_period} \
      ~{true="--max-period" false="" max_period} \
      ~{true="--match" false="" match} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{true="--gap-ext" false="" gap_ext} \
      ~{true="--five-prime" false="" five_prime} \
      ~{if defined(three_prime) then ("--three-prime " +  '"' + three_prime + '"') else ""} \
      ~{if defined(ada_mat_rat) then ("--ada-mat-rat " +  '"' + ada_mat_rat + '"') else ""} \
      ~{true="--output" false="" str_output_file} \
      ~{true="--unit-seq" false="" unit_seq} \
      ~{true="--longest" false="" longest} \
      ~{true="--full-len" false="" full_len} \
      ~{true="--out-fmt" false="" out_fmt} \
      ~{true="--thread" false="" thread}
  >>>
  parameter_meta {
    km_er_length: "k-mer length (no larger than 16). [8]"
    window_size: "window size. [1]"
    step_size: "INT    step size. [1]"
    hpc_km_er: "use homopolymer-compressed k-mer. [False]"
    min_copy: "INT    minimum copy number of tandem repeat. [2]"
    max_diver_g: "INT    maximum allowed divergence rate between two consecutive repeats. [0.25]"
    min_period: "INT    minimum period size of tandem repeat. (>=2) [30]"
    max_period: "INT    maximum period size of tandem repeat. (<=4294967295) [10K]"
    match: "INT       match score [2]"
    mismatch: "mismatch penalty [4]"
    gap_open: "(,INT) gap opening penalty (O1,O2) [4,24]"
    gap_ext: "INT(,INT) gap extension penalty (E1,E2) [2,1] TideHunter provides three gap penalty modes, cost of a g-long gap: - convex (default): min{O1+g*E1, O2+g*E2} - affine (set O2 as 0): O1+g*E1 - linear (set O1 as 0): g*E1"
    five_prime: "STR    5' adapter sequence (sense strand). [NULL]"
    three_prime: "3' adapter sequence (anti-sense strand). [NULL]"
    ada_mat_rat: "minimum match ratio of adapter sequence. [0.80]"
    str_output_file: "STR    output file. [stdout]"
    unit_seq: "only output the unit sequences of each tandem repeat, no consensus sequence. [False]"
    longest: "only output the consensus sequence of the tandem repeat that covers the longest read sequence. [False]"
    full_len: "only output full-length consensus sequence. [False]"
    out_fmt: "INT    output format. [1] - 1: FASTA - 2: Tabular"
    thread: "INT    number of threads to use. [4]"
    in_dot_f_a_slash_fq: ""
  }
}