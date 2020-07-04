version 1.0

task SsuEslAlimanip {
  input {
    String? ln_fract
    String? lx_fract
    String? lm_in
    String? lmax
    String? de_trunc
    String? seq_r
    String? seq_k
    Boolean? small
    Boolean? k_reorder
    String? seq_ins
    String? seq_ni
    String? seq_xi
    String? trim
    Boolean? t_keep_rf
    String? tree
    String? reorder
    String? mask_two_rf
    Boolean? m_keep_rf
    Boolean? num_all
    Boolean? num_rf
    String? rm_gc
    Boolean? sindi
    Boolean? post_two_pp
    Boolean? amino
    Boolean? dna
    Boolean? rna
    String msa_file
  }
  command <<<
    ssu-esl-alimanip \
      ~{msa_file} \
      ~{if defined(ln_fract) then ("--lnfract " +  '"' + ln_fract + '"') else ""} \
      ~{if defined(lx_fract) then ("--lxfract " +  '"' + lx_fract + '"') else ""} \
      ~{if defined(lm_in) then ("--lmin " +  '"' + lm_in + '"') else ""} \
      ~{if defined(lmax) then ("--lmax " +  '"' + lmax + '"') else ""} \
      ~{if defined(de_trunc) then ("--detrunc " +  '"' + de_trunc + '"') else ""} \
      ~{if defined(seq_r) then ("--seq-r " +  '"' + seq_r + '"') else ""} \
      ~{if defined(seq_k) then ("--seq-k " +  '"' + seq_k + '"') else ""} \
      ~{true="--small" false="" small} \
      ~{true="--k-reorder" false="" k_reorder} \
      ~{if defined(seq_ins) then ("--seq-ins " +  '"' + seq_ins + '"') else ""} \
      ~{if defined(seq_ni) then ("--seq-ni " +  '"' + seq_ni + '"') else ""} \
      ~{if defined(seq_xi) then ("--seq-xi " +  '"' + seq_xi + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{true="--t-keeprf" false="" t_keep_rf} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(reorder) then ("--reorder " +  '"' + reorder + '"') else ""} \
      ~{if defined(mask_two_rf) then ("--mask2rf " +  '"' + mask_two_rf + '"') else ""} \
      ~{true="--m-keeprf" false="" m_keep_rf} \
      ~{true="--num-all" false="" num_all} \
      ~{true="--num-rf" false="" num_rf} \
      ~{if defined(rm_gc) then ("--rm-gc " +  '"' + rm_gc + '"') else ""} \
      ~{true="--sindi" false="" sindi} \
      ~{true="--post2pp" false="" post_two_pp} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna}
  >>>
  parameter_meta {
    ln_fract: ": remove sequences w/length < <x> fraction of median length"
    lx_fract: ": remove sequences w/length > <x> fraction of median length"
    lm_in: ": remove sequences w/length < <n> residues"
    lmax: ": remove sequences w/length > <n> residues"
    de_trunc: ": remove seqs w/gaps in >= <n> 5' or 3'-most non-gap #=GC RF cols"
    seq_r: ": remove sequences with names listed in file <f>"
    seq_k: ": remove all seqs *except* those listed in <f>"
    small: ": w/--seq-r or --seq-k use minimal RAM (no seq reordering)"
    k_reorder: ": with --seq-k <f>, reorder sequences to order in <f>"
    seq_ins: ": keep only seqs w/an insert after non-gap RF col <n>"
    seq_ni: ": w/--seq-ins require at least <n> residue insertions  [1]"
    seq_xi: ": w/--seq-ins require at most  <n> residue insertions  [1000000]"
    trim: ": trim aligned seqs in <msafile> to subseqs in <f>"
    t_keep_rf: ": w/--trim keep GC RF annotation in msa, if it exists"
    tree: ": reorder MSA to tree order following SLC, save Newick tree to <f>"
    reorder: ": reorder seqs to the order listed in <f>, all seqs must be listed"
    mask_two_rf: ": set #=GC RF as x=1, gap=0 from 1/0s in 1-line <f>"
    m_keep_rf: ": with --mask2rf, do not overwrite nongap RF characters with 'x'"
    num_all: ": add annotation numbering all columns"
    num_rf: ": add annotation numbering the non-gap RF columns"
    rm_gc: ": remove GC <s> markup, <s> must be RF|SS_cons|SA_cons|PP_cons"
    sindi: ": annotate individual secondary structures by imposing consensus"
    post_two_pp: ": convert infernal 0.72-1.0.2 POST posterior prob annotation to PP"
    amino: ": <msafile> contains protein alignments"
    dna: ": <msafile> contains DNA alignments"
    rna: ": <msafile> contains RNA alignments"
    msa_file: ""
  }
}