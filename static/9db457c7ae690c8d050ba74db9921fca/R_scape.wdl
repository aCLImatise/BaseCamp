version 1.0

task Rscape {
  input {
    Int? eval_max_expected
    Boolean? test_basepairs_other
    Boolean? structured
    Boolean? sample_contacts
    Boolean? sample_bp
    Boolean? sample_wc
    Boolean? fold
    Directory? outdir
    File? out_name
    Boolean? rtw_or_all
    Boolean? _be_verbose
    Int? window
    Int? slide
    Boolean? one_msa
    Boolean? no_figures
    Boolean? roc
    Float? filter_xseqcons_residues
    Float? require_d_
    Float? require_seqs_
    Int? t_start
    Int? tend
    Boolean? consensus
    Int? sub_msa
    Int? n_seq_min
    Float? gap_thresh
    Float? mini_d
    Float? max_id
    String? tree_file
    Boolean? v_shuffle
    Boolean? c_shuffle
    Int? cnt_maxd
    File? pdb_file
    Int? cnt_mind
    Boolean? only_pdb
    String? in_format
    Int? n_shuffle
    Boolean? chia
    Boolean? chip
    Boolean? chi
    Boolean? gta
    Boolean? gtp
    Boolean? gt
    Boolean? mia
    Boolean? mip
    Boolean? mi
    Boolean? mira
    Boolean? mir_p
    Boolean? mir
    Boolean? miga
    Boolean? mi_gp
    Boolean? mig
    Boolean? o_mesa
    Boolean? om_esp
    Boolean? omes
    Boolean? rafa
    Boolean? r_afp
    Boolean? raf
    Boolean? raf_sa
    Boolean? raf_sp
    Boolean? raf_s
    Boolean? ccfa
    Boolean? ccfp
    Boolean? ccf
    Boolean? ptf_p
    Boolean? p_tap
    Boolean? pt_dp
    Boolean? cone_six
    Boolean? c_two
    Boolean? c_select
    Boolean? naive
    Boolean? null_phylo
    Boolean? non_param
    Boolean? potts
    Boolean? dna
    Boolean? use_rna_alphabet
    Boolean? amino
    Float? pt_muh
    Float? pt_mue
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
    Int? minh_loop
    Int? seed
    Float? pm_ass
    Boolean? options
    String var_93
    String structural
    String covariation
    String above
    String phylogenetic
    String expectation
    String msa_file
  }
  command <<<
    R_scape \
      ~{var_93} \
      ~{structural} \
      ~{covariation} \
      ~{above} \
      ~{phylogenetic} \
      ~{expectation} \
      ~{msa_file} \
      ~{if defined(eval_max_expected) then ("-E " +  '"' + eval_max_expected + '"') else ""} \
      ~{if (test_basepairs_other) then "-s" else ""} \
      ~{if (structured) then "--structured" else ""} \
      ~{if (sample_contacts) then "--samplecontacts" else ""} \
      ~{if (sample_bp) then "--samplebp" else ""} \
      ~{if (sample_wc) then "--samplewc" else ""} \
      ~{if (fold) then "--fold" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (rtw_or_all) then "--r2rall" else ""} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{if (one_msa) then "--onemsa" else ""} \
      ~{if (no_figures) then "--nofigures" else ""} \
      ~{if (roc) then "--roc" else ""} \
      ~{if defined(filter_xseqcons_residues) then ("-F " +  '"' + filter_xseqcons_residues + '"') else ""} \
      ~{if defined(require_d_) then ("-I " +  '"' + require_d_ + '"') else ""} \
      ~{if defined(require_seqs_) then ("-i " +  '"' + require_seqs_ + '"') else ""} \
      ~{if defined(t_start) then ("--tstart " +  '"' + t_start + '"') else ""} \
      ~{if defined(tend) then ("--tend " +  '"' + tend + '"') else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(sub_msa) then ("--submsa " +  '"' + sub_msa + '"') else ""} \
      ~{if defined(n_seq_min) then ("--nseqmin " +  '"' + n_seq_min + '"') else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(max_id) then ("--maxid " +  '"' + max_id + '"') else ""} \
      ~{if defined(tree_file) then ("--treefile " +  '"' + tree_file + '"') else ""} \
      ~{if (v_shuffle) then "--vshuffle" else ""} \
      ~{if (c_shuffle) then "--cshuffle" else ""} \
      ~{if defined(cnt_maxd) then ("--cntmaxD " +  '"' + cnt_maxd + '"') else ""} \
      ~{if defined(pdb_file) then ("--pdbfile " +  '"' + pdb_file + '"') else ""} \
      ~{if defined(cnt_mind) then ("--cntmind " +  '"' + cnt_mind + '"') else ""} \
      ~{if (only_pdb) then "--onlypdb" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(n_shuffle) then ("--nshuffle " +  '"' + n_shuffle + '"') else ""} \
      ~{if (chia) then "--CHIa" else ""} \
      ~{if (chip) then "--CHIp" else ""} \
      ~{if (chi) then "--CHI" else ""} \
      ~{if (gta) then "--GTa" else ""} \
      ~{if (gtp) then "--GTp" else ""} \
      ~{if (gt) then "--GT" else ""} \
      ~{if (mia) then "--MIa" else ""} \
      ~{if (mip) then "--MIp" else ""} \
      ~{if (mi) then "--MI" else ""} \
      ~{if (mira) then "--MIra" else ""} \
      ~{if (mir_p) then "--MIrp" else ""} \
      ~{if (mir) then "--MIr" else ""} \
      ~{if (miga) then "--MIga" else ""} \
      ~{if (mi_gp) then "--MIgp" else ""} \
      ~{if (mig) then "--MIg" else ""} \
      ~{if (o_mesa) then "--OMESa" else ""} \
      ~{if (om_esp) then "--OMESp" else ""} \
      ~{if (omes) then "--OMES" else ""} \
      ~{if (rafa) then "--RAFa" else ""} \
      ~{if (r_afp) then "--RAFp" else ""} \
      ~{if (raf) then "--RAF" else ""} \
      ~{if (raf_sa) then "--RAFSa" else ""} \
      ~{if (raf_sp) then "--RAFSp" else ""} \
      ~{if (raf_s) then "--RAFS" else ""} \
      ~{if (ccfa) then "--CCFa" else ""} \
      ~{if (ccfp) then "--CCFp" else ""} \
      ~{if (ccf) then "--CCF" else ""} \
      ~{if (ptf_p) then "--PTFp" else ""} \
      ~{if (p_tap) then "--PTAp" else ""} \
      ~{if (pt_dp) then "--PTDp" else ""} \
      ~{if (cone_six) then "--C16" else ""} \
      ~{if (c_two) then "--C2" else ""} \
      ~{if (c_select) then "--CSELECT" else ""} \
      ~{if (naive) then "--naive" else ""} \
      ~{if (null_phylo) then "--nullphylo" else ""} \
      ~{if (non_param) then "--nonparam" else ""} \
      ~{if (potts) then "--potts" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (use_rna_alphabet) then "--rna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if defined(pt_muh) then ("--ptmuh " +  '"' + pt_muh + '"') else ""} \
      ~{if defined(pt_mue) then ("--ptmue " +  '"' + pt_mue + '"') else ""} \
      ~{if (plm) then "--PLM" else ""} \
      ~{if (a_plm) then "--APLM" else ""} \
      ~{if (out_potts) then "--outpotts" else ""} \
      ~{if (gremlin) then "--gremlin" else ""} \
      ~{if (out_msa) then "--outmsa" else ""} \
      ~{if (out_tree) then "--outtree" else ""} \
      ~{if (out_null) then "--outnull" else ""} \
      ~{if (all_branch) then "--allbranch" else ""} \
      ~{if (v_output) then "--voutput" else ""} \
      ~{if defined(power) then ("--power " +  '"' + power + '"') else ""} \
      ~{if (double_subs) then "--doublesubs" else ""} \
      ~{if defined(minh_loop) then ("--minhloop " +  '"' + minh_loop + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(pm_ass) then ("--pmass " +  '"' + pm_ass + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    eval_max_expected: ": Eval: max expected number of covNBPs allowed  [0.05]  (x>=0)"
    test_basepairs_other: ": two-set test: basepairs / all other pairs. Requires a given structure"
    structured: ": This is a structural RNA of unknown structure"
    sample_contacts: ": basepair-set sample size is all contacts (default for amino acids)"
    sample_bp: ": basepair-set sample size is all 12-type basepairs (default for RNA/DNA)"
    sample_wc: ": basepair-set sample size is WWc basepairs only"
    fold: ": obtain the structure with maximum covariation"
    outdir: ": specify a directory for all output files"
    out_name: ": specify a filename for all outputs"
    rtw_or_all: ": make R2R plot all position in the alignment"
    _be_verbose: ": be verbose"
    window: ": window size  (n>0)"
    slide: ": window slide  [50]  (n>0)"
    one_msa: ": if file has more than one msa, analyze only the first one"
    no_figures: ": do not produce R2R and dotplot outputs"
    roc: ": write .roc file"
    filter_xseqcons_residues: ": filter out seqs <x*seq_cons residues  (0<x<=1.0)"
    require_d_: ": require seqs to have < <x> id  [1.0]  (0<x<=1.0)"
    require_seqs_: ": require seqs to have >= <x> id  (0<=x<1.0)"
    t_start: ": min alignment position to analyze [1..alen]  (n>0)"
    tend: ": max alignment position to analyze [1..alen]  (n>0)"
    consensus: ": analyze only consensus (seq_cons) positions"
    sub_msa: ": take n random sequences from the alignment, all if NULL  (n>0)"
    n_seq_min: ": minimum number of sequences in the alignment  (n>0)"
    gap_thresh: ": keep columns with < <x> fraction of gaps  [0.75]  (0<=x<=1)"
    mini_d: ": minimum avgid of the given alignment  (0<x<=1.0)"
    max_id: ": maximum avgid of the given alignment  (0<x<=1.0)"
    tree_file: ": provide external tree to use"
    v_shuffle: ": shuffle the residues in a column"
    c_shuffle: ": shuffle the columns of the alignment"
    cnt_maxd: ": max distance for contact definition  [8.0]  (x>0)"
    pdb_file: ": read pdb file from file <f>"
    cnt_mind: ": min (j-i+1) for contact definition  [1]  (n>0)"
    only_pdb: ": use only structural info in pdbfile, ignore msa annotation if any"
    in_format: ": specify format"
    n_shuffle: ": number of shuffled alignments  (n>0)"
    chia: ": CHI  ASC corrected statistic"
    chip: ": CHI  APC corrected statistic"
    chi: ": CHI  statistic"
    gta: ": GT   ASC corrected statistic"
    gtp: ": GT   APC corrected statistic  [TRUE]"
    gt: ": GT   statistic"
    mia: ": MI   ASC corrected statistic"
    mip: ": MI   APC corrected statistic"
    mi: ": MI   statistic"
    mira: ": MIr  ASC corrected statistic"
    mir_p: ": MIr  APC corrected statistic"
    mir: ": MIr  statistic"
    miga: ": MIg  ASC corrected statistic"
    mi_gp: ": MIg  APC corrected statistic"
    mig: ": MIg  statistic"
    o_mesa: ": OMES ASC corrected statistic"
    om_esp: ": OMES APC corrected statistic"
    omes: ": OMES statistic"
    rafa: ": RNAalifold ASC corrected statistic"
    r_afp: ": RNAalifold APC corrected statistic"
    raf: ": RNAalifold statistic"
    raf_sa: ": RNAalifold-stacking ASC corrected statistic"
    raf_sp: ": RNAalifold-stacking APC corrected statistic"
    raf_s: ": RNAalifold-stacking  statistic"
    ccfa: ": Correlation Coefficient with Frobenius norm ASC corrected statistic"
    ccfp: ": Correlation Coefficient with Frobenious norm  APC corrected statistic"
    ccf: ": Correlation Coefficient with Frobenious norm   statistic"
    ptf_p: ": POTTS Frobenious ASC corrected statistic"
    p_tap: ": POTTS Averages   ASC corrected statistic"
    pt_dp: ": POTTS DI         ASC corrected statistic"
    cone_six: ": use 16 covariation classes"
    c_two: ": use 2 covariation classes"
    c_select: ": use C2 if nseq <= nseqthresh otherwise use C16  [TRUE]"
    naive: ": sort results by cov score, no null model involved"
    null_phylo: ": nullphylo  statistics  [TRUE]"
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
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    pm_ass: ": pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)"
    options: ""
    var_93: ""
    structural: ""
    covariation: ""
    above: ""
    phylogenetic: ""
    expectation: ""
    msa_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}