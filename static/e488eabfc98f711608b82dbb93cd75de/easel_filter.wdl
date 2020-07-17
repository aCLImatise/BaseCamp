version 1.0

task EaselFilter {
  input {
    String? send_output_msas
    String? in_format
    String? out_format
    Boolean? dna
    Boolean? rna
    Boolean? amino
    Boolean? ignore_rf
    String? frag_thresh
    String? sym_frac
    Boolean? no_sampling
    String? ns_amp
    String? samp_thresh
    String? max_frag
    String? set_random_seed
    Boolean? cons_cover
    Boolean? rand_order
    Boolean? orig_order
    Boolean? options
  }
  command <<<
    easel filter \
      ~{if defined(send_output_msas) then ("-o " +  '"' + send_output_msas + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--amino" false="" amino} \
      ~{true="--ignore-rf" false="" ignore_rf} \
      ~{if defined(frag_thresh) then ("--fragthresh " +  '"' + frag_thresh + '"') else ""} \
      ~{if defined(sym_frac) then ("--symfrac " +  '"' + sym_frac + '"') else ""} \
      ~{true="--no-sampling" false="" no_sampling} \
      ~{if defined(ns_amp) then ("--nsamp " +  '"' + ns_amp + '"') else ""} \
      ~{if defined(samp_thresh) then ("--sampthresh " +  '"' + samp_thresh + '"') else ""} \
      ~{if defined(max_frag) then ("--maxfrag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{true="--conscover" false="" cons_cover} \
      ~{true="--randorder" false="" rand_order} \
      ~{true="--origorder" false="" orig_order} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    send_output_msas: ": send filtered output MSAs to file <f>, not stdout"
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
}