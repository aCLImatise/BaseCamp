version 1.0

task NanosimhSimulate {
  input {
    File? reference
    String? profile
    File? out_pref
    Int? number
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
  }
  command <<<
    nanosimh_simulate \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(out_pref) then ("--out-pref " +  '"' + out_pref + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(mis_rate) then ("--mis-rate " +  '"' + mis_rate + '"') else ""} \
      ~{if defined(ins_rate) then ("--ins-rate " +  '"' + ins_rate + '"') else ""} \
      ~{if defined(del_rate) then ("--del-rate " +  '"' + del_rate + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (circular) then "--circular" else ""} \
      ~{if (perfect) then "--perfect" else ""} \
      ~{if (merge_contigs) then "--merge-contigs" else ""} \
      ~{if (rnf) then "--rnf" else ""} \
      ~{if (rnf_add_cigar) then "--rnf-add-cigar" else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(km_er_bias) then ("--kmer-bias " +  '"' + km_er_bias + '"') else ""}
  >>>
  parameter_meta {
    reference: "reference genome in fasta file"
    profile: "prefix of training set profiles [training]"
    out_pref: "prefix of output file [simulated]"
    number: "number of generated reads [20000]"
    mis_rate: "mismatch rate (weight tuning) [1.0]"
    ins_rate: "insertion rate (weight tuning) [1.0]"
    del_rate: "deletion reate (weight tuning) [1.0]"
    seed: "initial seed for the pseudorandom number generator (0\\nfor random) [1]"
    circular: "circular simulation (linear otherwise)"
    perfect: "output perfect reads, no mutations"
    merge_contigs: "merge contigs from the reference"
    rnf: "use RNF format for read names"
    rnf_add_cigar: "add cigar to RNF names (not fully debugged, yet)"
    max_len: "maximum read length [inf]"
    min_len: "minimum read length [50]"
    km_er_bias: "prohibits homopolymers with length >= n bases in\\noutput reads [6]"
  }
  output {
    File out_stdout = stdout()
    File out_out_pref = "${in_out_pref}"
  }
}