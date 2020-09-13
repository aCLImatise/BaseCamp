version 1.0

task EaselFilter {
  input {
    File? send_filtered_msas
    File? in_format
    String? out_format
    Boolean? dna
    Boolean? rna
    Boolean? amino
    Boolean? ignore_rf
    Float? frag_thresh
    Float? sym_frac
    Boolean? no_sampling
    Int? ns_amp
    Int? samp_thresh
    Int? max_frag
    Int? set_random_seed
    Boolean? cons_cover
    Boolean? rand_order
    Boolean? orig_order
    Boolean? options
  }
  command <<<
    easel filter \
      ~{if defined(send_filtered_msas) then ("-o " +  '"' + send_filtered_msas + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (ignore_rf) then "--ignore-rf" else ""} \
      ~{if defined(frag_thresh) then ("--fragthresh " +  '"' + frag_thresh + '"') else ""} \
      ~{if defined(sym_frac) then ("--symfrac " +  '"' + sym_frac + '"') else ""} \
      ~{if (no_sampling) then "--no-sampling" else ""} \
      ~{if defined(ns_amp) then ("--nsamp " +  '"' + ns_amp + '"') else ""} \
      ~{if defined(samp_thresh) then ("--sampthresh " +  '"' + samp_thresh + '"') else ""} \
      ~{if defined(max_frag) then ("--maxfrag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{if (cons_cover) then "--conscover" else ""} \
      ~{if (rand_order) then "--randorder" else ""} \
      ~{if (orig_order) then "--origorder" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    send_filtered_msas: ": send filtered output MSAs to file <f>, not stdout"
    in_format: ": specify the input MSA file is in format <s>"
    out_format: ": write the filtered output MSA in format <s>"
    dna: ": specify that input MSA is DNA (don't autodetect)"
    rna: ":  ... that input MSA is RNA"
    amino: ":  ... that input MSA is protein"
    ignore_rf: ": ignore any RF line; always determine our own consensus"
    frag_thresh: ": seq is fragment if aspan/alen < fragthresh  [0.5]"
    sym_frac: ": col is consensus if nres/(nres+ngap) >= symfrac  [0.5]"
    no_sampling: ": never use subsampling to determine consensus"
    ns_amp: ": number of seqs to sample (if using sampling)  [10000]"
    samp_thresh: ": switch to using sampling when nseq > nsamp  [50000]"
    max_frag: ": if sample has > maxfrag fragments, don't use sample  [5000]"
    set_random_seed: ": set random number seed to <n>  [42]"
    cons_cover: ": keep seq whose alispan has better consensus coverage  [default]"
    rand_order: ":  ... or with random preference"
    orig_order: ":  ... or prefer seq that comes first in order"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_send_filtered_msas = "${in_send_filtered_msas}"
  }
}