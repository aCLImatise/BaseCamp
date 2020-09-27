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
    Int? three_prime
    Float? ada_mat_rat
    File? str_output_file
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
      ~{if (step_size) then "--step-size" else ""} \
      ~{if (hpc_km_er) then "--HPC-kmer" else ""} \
      ~{if (min_copy) then "--min-copy" else ""} \
      ~{if (max_diver_g) then "--max-diverg" else ""} \
      ~{if (min_period) then "--min-period" else ""} \
      ~{if (max_period) then "--max-period" else ""} \
      ~{if (match) then "--match" else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if (gap_ext) then "--gap-ext" else ""} \
      ~{if (five_prime) then "--five-prime" else ""} \
      ~{if defined(three_prime) then ("--three-prime " +  '"' + three_prime + '"') else ""} \
      ~{if defined(ada_mat_rat) then ("--ada-mat-rat " +  '"' + ada_mat_rat + '"') else ""} \
      ~{if (str_output_file) then "--output" else ""} \
      ~{if (unit_seq) then "--unit-seq" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if (full_len) then "--full-len" else ""} \
      ~{if (out_fmt) then "--out-fmt" else ""} \
      ~{if (thread) then "--thread" else ""}
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
    gap_ext: "INT(,INT) gap extension penalty (E1,E2) [2,1]\\nTideHunter provides three gap penalty modes, cost of a g-long gap:\\n- convex (default): min{O1+g*E1, O2+g*E2}\\n- affine (set O2 as 0): O1+g*E1\\n- linear (set O1 as 0): g*E1"
    five_prime: "STR    5' adapter sequence (sense strand). [NULL]"
    three_prime: "3' adapter sequence (anti-sense strand). [NULL]"
    ada_mat_rat: "minimum match ratio of adapter sequence. [0.80]"
    str_output_file: "STR    output file. [stdout]"
    unit_seq: "only output the unit sequences of each tandem repeat, no consensus sequence. [False]"
    longest: "only output the consensus sequence of the tandem repeat that covers the longest read sequence. [False]"
    full_len: "only output full-length consensus sequence. [False]"
    out_fmt: "INT    output format. [1]\\n- 1: FASTA\\n- 2: Tabular"
    thread: "INT    number of threads to use. [4]"
    in_dot_f_a_slash_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_str_output_file = "${in_str_output_file}"
  }
}