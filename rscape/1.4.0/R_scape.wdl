version 1.0

task RScape {
  input {
    Boolean? non_param
    Boolean? potts
    Boolean? dna
    Boolean? use_rna_alphabet
    Boolean? amino
    String? pt_muh
    String? pt_mue
    Boolean? plm
    Boolean? a_plm
    Boolean? out_potts
    Boolean? gremlin
    Boolean? out_msa
    Boolean? out_tree
    Boolean? out_null
    Boolean? all_branch
    Boolean? v_output
    String? power
    Boolean? double_subs
    String? minh_loop
    String? to_l
    String? seed
    String? pm_ass
    Boolean? options
    String var_23
    String structural
    String covariation
    String above
    String phylogenetic
    String expectation
    String msa_file
  }
  command <<<
    R-scape \
      ~{var_23} \
      ~{structural} \
      ~{covariation} \
      ~{above} \
      ~{phylogenetic} \
      ~{expectation} \
      ~{msa_file} \
      ~{true="--nonparam" false="" non_param} \
      ~{true="--potts" false="" potts} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" use_rna_alphabet} \
      ~{true="--amino" false="" amino} \
      ~{if defined(pt_muh) then ("--ptmuh " +  '"' + pt_muh + '"') else ""} \
      ~{if defined(pt_mue) then ("--ptmue " +  '"' + pt_mue + '"') else ""} \
      ~{true="--PLM" false="" plm} \
      ~{true="--APLM" false="" a_plm} \
      ~{true="--outpotts" false="" out_potts} \
      ~{true="--gremlin" false="" gremlin} \
      ~{true="--outmsa" false="" out_msa} \
      ~{true="--outtree" false="" out_tree} \
      ~{true="--outnull" false="" out_null} \
      ~{true="--allbranch" false="" all_branch} \
      ~{true="--voutput" false="" v_output} \
      ~{if defined(power) then ("--power " +  '"' + power + '"') else ""} \
      ~{true="--doublesubs" false="" double_subs} \
      ~{if defined(minh_loop) then ("--minhloop " +  '"' + minh_loop + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(pm_ass) then ("--pmass " +  '"' + pm_ass + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    non_param: ": non parameteric correlate  [TRUE]"
    potts: ": potts couplings"
    dna: ": use DNA alphabet"
    use_rna_alphabet: ": use RNA alphabet"
    amino: ": use protein alphabet"
    pt_muh: ": potts regularization parameters for training hi's  [0.01]  (x>=0)"
    pt_mue: ": potts regularization parameters for training eij's  [0.20]  (x>=0)"
    plm: ": potts option for training"
    a_plm: ": potts option for training"
    out_potts: ": write inferred potts parameters"
    gremlin: ": reproduce gremlin"
    out_msa: ": write actual msa used"
    out_tree: ": write phylogenetic tree used"
    out_null: ": write null alignments"
    all_branch: ": output msa with all branges"
    v_output: ": verbose output"
    power: ": calculate empirical power curve"
    double_subs: ": calculate power using double substitutions, default is single substitutions"
    minh_loop: ": minimum hairpin loop length. If i-j is the closing pair: minhloop = j-1-1. Default is 0  (n>=0)"
    to_l: ": tolerance  [1e-6]"
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    pm_ass: ": pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)"
    options: ""
    var_23: ""
    structural: ""
    covariation: ""
    above: ""
    phylogenetic: ""
    expectation: ""
    msa_file: ""
  }
}