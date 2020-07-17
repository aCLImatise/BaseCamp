version 1.0

task NanosimH {
  input {
    String? profile
    String? out_pref
    Int? number
    Float? un_align_rate
    Float? mis_rate
    Float? ins_rate
    Float? del_rate
    Int? seed
    Boolean? circular
    Boolean? perfect
    Boolean? merge_contigs
    Boolean? rnf
    Boolean? rnf_add_cigar
    Int? max_len
    Int? min_len
    Int? km_er_bias
    Boolean? v
  }
  command <<<
    nanosim-h \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(out_pref) then ("--out-pref " +  '"' + out_pref + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(un_align_rate) then ("--unalign-rate " +  '"' + un_align_rate + '"') else ""} \
      ~{if defined(mis_rate) then ("--mis-rate " +  '"' + mis_rate + '"') else ""} \
      ~{if defined(ins_rate) then ("--ins-rate " +  '"' + ins_rate + '"') else ""} \
      ~{if defined(del_rate) then ("--del-rate " +  '"' + del_rate + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--circular" false="" circular} \
      ~{true="--perfect" false="" perfect} \
      ~{true="--merge-contigs" false="" merge_contigs} \
      ~{true="--rnf" false="" rnf} \
      ~{true="--rnf-add-cigar" false="" rnf_add_cigar} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(km_er_bias) then ("--kmer-bias " +  '"' + km_er_bias + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    profile: "error profile - one of precomputed profiles ('ecoli_R7', 'yeast', 'ecoli_R7.3', 'ecoli_R9_2D', 'ecoli_R9_1D', 'ecoli_UCSC1b') or own directory with an error profile [ecoli_R9_2D]"
    out_pref: "prefix of output file [simulated]"
    number: "number of generated reads [10000]"
    un_align_rate: "rate of unaligned reads [detect from the error profile]"
    mis_rate: "mismatch rate (weight tuning) [1.0]"
    ins_rate: "insertion rate (weight tuning) [1.0]"
    del_rate: "deletion rate (weight tuning) [1.0]"
    seed: "initial seed for the pseudorandom number generator (0 for random) [42]"
    circular: "circular simulation (linear otherwise)"
    perfect: "output perfect reads, no mutations"
    merge_contigs: "merge contigs from the reference"
    rnf: "use RNF format for read names"
    rnf_add_cigar: "add cigar to RNF names (not fully debugged, yet)"
    max_len: "maximum read length [inf]"
    min_len: "minimum read length [50]"
    km_er_bias: "prohibits homopolymers with length >= n bases in output reads [6]"
    v: ""
  }
}