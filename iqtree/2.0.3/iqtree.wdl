version 1.0

task Iqtree {
  input {
    Int? seqtype
    File? parsrand_starting_default
    String? outgroup_taxon_list
    String? prefix
    Int? seed
    Boolean? safe
    Int? mem
    Int? runs
    Boolean? redo
    Boolean? verbose
    Boolean? quiet
    Int? f_const
    Int? epsilon
    Int? auto_coresthreads_autodetect
    Int? threads_max
    File? dir_nexusraxml_partition
    File? dir_p_edgelinked
    File? dir_p_edgeunlinked
    File? dir_p_separate
    Int? subsample
    Int? subsample_seed
    Int? l_map
    File? lmc_lust
    Boolean? quartet_lh
    Int? nin_it
    Int? ntop
    Int? n_best
    Int? fix_number_stop
    Int? n_stop
    Int? perturb
    Int? radius
    Boolean? all_nni
    File? multifurcating_constraint_file
    Boolean? fast
    Boolean? poly_to_my
    Boolean? tree_fix
    Boolean? t_reels
    Boolean? show_lh
    Boolean? terrace
    Int? uf_boot
    Int? uf_jack
    Int? jack_prop
    String? sampling
    Boolean? boot_trees
    Boolean? wbt_l
    Int? nmax
    Int? nstep
    Int? bc_or
    Int? be_ps
    Boolean? bnn_i
    Int? boot
    Int? jack
    Int? bc_on
    Int? b_only
    Boolean? t_be
    Boolean? a_bayes
    Int? lbp
    String? msub
    String? m_freq
    String? m_rate
    Int? cm_in
    Int? cmax
    String? merit
    Boolean? mtree
    Boolean? m_redo
    String? madd
    File? m_def
    Boolean? modelo_matic
    Int? r_cluster
    Int? r_cluster_f
    Int? r_cluster_max
    Int? alpha_min
    Boolean? gamma_median
    Boolean? rate
    Boolean? ml_rate
    File? input_counts_file
    Boolean? mix_opt
    Boolean? asc_ascertainment_bias
    File? tree_freq
    File? site_freq
    Boolean? freq_max
    File? trees
    Int? test
    Boolean? test_weight
    Boolean? test_au
    Boolean? site_lh
    Boolean? ancestral
    Int? asr_min
    Boolean? sym_test
    Boolean? sym_test_only
    Boolean? sym_test_remove_bad
    Boolean? sym_test_remove_good
    Int? sym_test_type
    Float? sym_test_pval
    Boolean? sym_test_keep_zero
    File? gcf
    Boolean? df_tree
    Int? scf
    Boolean? cf_verbose
    Int? sup_min
    Int? burnin
    Boolean? con_tree
    Boolean? con_net
    File? support
    String? sup_tag
    Boolean? tree_dist_all
    File? tree_dist
    File? tree_dist_two
    Int? taxa_yuleharding_random
    String? rand
    Int? rlen
    Boolean? keep_ident
    Int? cp_time
    Boolean? bl_fix
    Boolean? bl_scale
    Boolean? blm_in
    Boolean? bl_max
    Boolean? w_slr
    Boolean? w_slm
    Boolean? wsl_mr
    Boolean? w_spr
    Boolean? ws_pm
    Boolean? wsp_mr
    Boolean? part_lh
    Boolean? no_out_files
    Boolean? eigen_lib
    Boolean? aln_info
  }
  command <<<
    iqtree \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if defined(parsrand_starting_default) then ("-t " +  '"' + parsrand_starting_default + '"') else ""} \
      ~{if defined(outgroup_taxon_list) then ("-o " +  '"' + outgroup_taxon_list + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (safe) then "--safe" else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if (redo) then "--redo" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(f_const) then ("-fconst " +  '"' + f_const + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(auto_coresthreads_autodetect) then ("-T " +  '"' + auto_coresthreads_autodetect + '"') else ""} \
      ~{if defined(threads_max) then ("--threads-max " +  '"' + threads_max + '"') else ""} \
      ~{if defined(dir_nexusraxml_partition) then ("-p " +  '"' + dir_nexusraxml_partition + '"') else ""} \
      ~{if defined(dir_p_edgelinked) then ("-q " +  '"' + dir_p_edgelinked + '"') else ""} \
      ~{if defined(dir_p_edgeunlinked) then ("-Q " +  '"' + dir_p_edgeunlinked + '"') else ""} \
      ~{if defined(dir_p_separate) then ("-S " +  '"' + dir_p_separate + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subsample_seed) then ("--subsample-seed " +  '"' + subsample_seed + '"') else ""} \
      ~{if defined(l_map) then ("--lmap " +  '"' + l_map + '"') else ""} \
      ~{if defined(lmc_lust) then ("--lmclust " +  '"' + lmc_lust + '"') else ""} \
      ~{if (quartet_lh) then "--quartetlh" else ""} \
      ~{if defined(nin_it) then ("--ninit " +  '"' + nin_it + '"') else ""} \
      ~{if defined(ntop) then ("--ntop " +  '"' + ntop + '"') else ""} \
      ~{if defined(n_best) then ("--nbest " +  '"' + n_best + '"') else ""} \
      ~{if defined(fix_number_stop) then ("-n " +  '"' + fix_number_stop + '"') else ""} \
      ~{if defined(n_stop) then ("--nstop " +  '"' + n_stop + '"') else ""} \
      ~{if defined(perturb) then ("--perturb " +  '"' + perturb + '"') else ""} \
      ~{if defined(radius) then ("--radius " +  '"' + radius + '"') else ""} \
      ~{if (all_nni) then "--allnni" else ""} \
      ~{if defined(multifurcating_constraint_file) then ("-g " +  '"' + multifurcating_constraint_file + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (poly_to_my) then "--polytomy" else ""} \
      ~{if (tree_fix) then "--tree-fix" else ""} \
      ~{if (t_reels) then "--treels" else ""} \
      ~{if (show_lh) then "--show-lh" else ""} \
      ~{if (terrace) then "--terrace" else ""} \
      ~{if defined(uf_boot) then ("--ufboot " +  '"' + uf_boot + '"') else ""} \
      ~{if defined(uf_jack) then ("--ufjack " +  '"' + uf_jack + '"') else ""} \
      ~{if defined(jack_prop) then ("--jack-prop " +  '"' + jack_prop + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if (boot_trees) then "--boot-trees" else ""} \
      ~{if (wbt_l) then "--wbtl" else ""} \
      ~{if defined(nmax) then ("--nmax " +  '"' + nmax + '"') else ""} \
      ~{if defined(nstep) then ("--nstep " +  '"' + nstep + '"') else ""} \
      ~{if defined(bc_or) then ("--bcor " +  '"' + bc_or + '"') else ""} \
      ~{if defined(be_ps) then ("--beps " +  '"' + be_ps + '"') else ""} \
      ~{if (bnn_i) then "--bnni" else ""} \
      ~{if defined(boot) then ("--boot " +  '"' + boot + '"') else ""} \
      ~{if defined(jack) then ("--jack " +  '"' + jack + '"') else ""} \
      ~{if defined(bc_on) then ("--bcon " +  '"' + bc_on + '"') else ""} \
      ~{if defined(b_only) then ("--bonly " +  '"' + b_only + '"') else ""} \
      ~{if (t_be) then "--tbe" else ""} \
      ~{if (a_bayes) then "--abayes" else ""} \
      ~{if defined(lbp) then ("--lbp " +  '"' + lbp + '"') else ""} \
      ~{if defined(msub) then ("--msub " +  '"' + msub + '"') else ""} \
      ~{if defined(m_freq) then ("--mfreq " +  '"' + m_freq + '"') else ""} \
      ~{if defined(m_rate) then ("--mrate " +  '"' + m_rate + '"') else ""} \
      ~{if defined(cm_in) then ("--cmin " +  '"' + cm_in + '"') else ""} \
      ~{if defined(cmax) then ("--cmax " +  '"' + cmax + '"') else ""} \
      ~{if defined(merit) then ("--merit " +  '"' + merit + '"') else ""} \
      ~{if (mtree) then "--mtree" else ""} \
      ~{if (m_redo) then "--mredo" else ""} \
      ~{if defined(madd) then ("--madd " +  '"' + madd + '"') else ""} \
      ~{if defined(m_def) then ("--mdef " +  '"' + m_def + '"') else ""} \
      ~{if (modelo_matic) then "--modelomatic" else ""} \
      ~{if defined(r_cluster) then ("--rcluster " +  '"' + r_cluster + '"') else ""} \
      ~{if defined(r_cluster_f) then ("--rclusterf " +  '"' + r_cluster_f + '"') else ""} \
      ~{if defined(r_cluster_max) then ("--rcluster-max " +  '"' + r_cluster_max + '"') else ""} \
      ~{if defined(alpha_min) then ("--alpha-min " +  '"' + alpha_min + '"') else ""} \
      ~{if (gamma_median) then "--gamma-median" else ""} \
      ~{if (rate) then "--rate" else ""} \
      ~{if (ml_rate) then "--mlrate" else ""} \
      ~{if defined(input_counts_file) then ("-s " +  '"' + input_counts_file + '"') else ""} \
      ~{if (mix_opt) then "--mix-opt" else ""} \
      ~{if (asc_ascertainment_bias) then "-m" else ""} \
      ~{if defined(tree_freq) then ("--tree-freq " +  '"' + tree_freq + '"') else ""} \
      ~{if defined(site_freq) then ("--site-freq " +  '"' + site_freq + '"') else ""} \
      ~{if (freq_max) then "--freq-max" else ""} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if (test_weight) then "--test-weight" else ""} \
      ~{if (test_au) then "--test-au" else ""} \
      ~{if (site_lh) then "--sitelh" else ""} \
      ~{if (ancestral) then "--ancestral" else ""} \
      ~{if defined(asr_min) then ("--asr-min " +  '"' + asr_min + '"') else ""} \
      ~{if (sym_test) then "--symtest" else ""} \
      ~{if (sym_test_only) then "--symtest-only" else ""} \
      ~{if (sym_test_remove_bad) then "--symtest-remove-bad" else ""} \
      ~{if (sym_test_remove_good) then "--symtest-remove-good" else ""} \
      ~{if defined(sym_test_type) then ("--symtest-type " +  '"' + sym_test_type + '"') else ""} \
      ~{if defined(sym_test_pval) then ("--symtest-pval " +  '"' + sym_test_pval + '"') else ""} \
      ~{if (sym_test_keep_zero) then "--symtest-keep-zero" else ""} \
      ~{if defined(gcf) then ("--gcf " +  '"' + gcf + '"') else ""} \
      ~{if (df_tree) then "--df-tree" else ""} \
      ~{if defined(scf) then ("--scf " +  '"' + scf + '"') else ""} \
      ~{if (cf_verbose) then "--cf-verbose" else ""} \
      ~{if defined(sup_min) then ("--sup-min " +  '"' + sup_min + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if (con_tree) then "--con-tree" else ""} \
      ~{if (con_net) then "--con-net" else ""} \
      ~{if defined(support) then ("--support " +  '"' + support + '"') else ""} \
      ~{if defined(sup_tag) then ("--suptag " +  '"' + sup_tag + '"') else ""} \
      ~{if (tree_dist_all) then "--tree-dist-all" else ""} \
      ~{if defined(tree_dist) then ("--tree-dist " +  '"' + tree_dist + '"') else ""} \
      ~{if defined(tree_dist_two) then ("--tree-dist2 " +  '"' + tree_dist_two + '"') else ""} \
      ~{if defined(taxa_yuleharding_random) then ("-r " +  '"' + taxa_yuleharding_random + '"') else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if defined(rlen) then ("--rlen " +  '"' + rlen + '"') else ""} \
      ~{if (keep_ident) then "--keep-ident" else ""} \
      ~{if defined(cp_time) then ("--cptime " +  '"' + cp_time + '"') else ""} \
      ~{if (bl_fix) then "-blfix" else ""} \
      ~{if (bl_scale) then "-blscale" else ""} \
      ~{if (blm_in) then "-blmin" else ""} \
      ~{if (bl_max) then "-blmax" else ""} \
      ~{if (w_slr) then "-wslr" else ""} \
      ~{if (w_slm) then "-wslm" else ""} \
      ~{if (wsl_mr) then "-wslmr" else ""} \
      ~{if (w_spr) then "-wspr" else ""} \
      ~{if (ws_pm) then "-wspm" else ""} \
      ~{if (wsp_mr) then "-wspmr" else ""} \
      ~{if (part_lh) then "--partlh" else ""} \
      ~{if (no_out_files) then "--no-outfiles" else ""} \
      ~{if (eigen_lib) then "--eigenlib" else ""} \
      ~{if (aln_info) then "-alninfo" else ""}
  >>>
  parameter_meta {
    seqtype: "BIN, DNA, AA, NT2AA, CODON, MORPH (default: auto-detect)"
    parsrand_starting_default: "|PARS|RAND    Starting tree (default: 99 parsimony and BIONJ)"
    outgroup_taxon_list: "[,...,TAX]     Outgroup taxon (list) for writing .treefile"
    prefix: "Prefix for all output files (default: aln/partition)"
    seed: "Random seed number, normally used for debugging purpose"
    safe: "Safe likelihood kernel to avoid numerical underflow"
    mem: "[G|M|%]     Maximal RAM usage in GB | MB | %"
    runs: "Number of indepedent runs (default: 1)"
    redo: "Ignore checkpoint and overwrite outputs (default: OFF)"
    verbose: "Verbose mode, printing more messages to screen"
    quiet: "Quiet mode, suppress printing to screen (stdout)"
    f_const: ",...,fN    Add constant patterns into alignment (N=no. states)"
    epsilon: "Likelihood epsilon for parameter estimate (default 0.01)"
    auto_coresthreads_autodetect: "|AUTO          No. cores/threads or AUTO-detect (default: 1)"
    threads_max: "Max number of threads for -T AUTO (default: all cores)"
    dir_nexusraxml_partition: "|DIR          NEXUS/RAxML partition file or directory with alignments\\nEdge-linked proportional partition model"
    dir_p_edgelinked: "|DIR          Like -p but edge-linked equal partition model"
    dir_p_edgeunlinked: "|DIR          Like -p but edge-unlinked partition model"
    dir_p_separate: "|DIR          Like -p but separate tree inference"
    subsample: "Randomly sub-sample partitions (negative for complement)"
    subsample_seed: "Random number seed for --subsample"
    l_map: "Number of quartets for likelihood mapping analysis"
    lmc_lust: "NEXUS file containing clusters for likelihood mapping"
    quartet_lh: "Print quartet log-likelihoods to .quartetlh file"
    nin_it: "Number of initial parsimony trees (default: 100)"
    ntop: "Number of top initial trees (default: 20)"
    n_best: "Number of best trees retained during search (defaut: 5)"
    fix_number_stop: "Fix number of iterations to stop (default: OFF)"
    n_stop: "Number of unsuccessful iterations to stop (default: 100)"
    perturb: "Perturbation strength for randomized NNI (default: 0.5)"
    radius: "Radius for parsimony SPR search (default: 6)"
    all_nni: "Perform more thorough NNI search (default: OFF)"
    multifurcating_constraint_file: "(Multifurcating) topological constraint tree file"
    fast: "Fast search to resemble FastTree"
    poly_to_my: "Collapse near-zero branches into polytomy"
    tree_fix: "Fix -t tree (no tree search performed)"
    t_reels: "Write locally optimal trees into .treels file"
    show_lh: "Compute tree likelihood without optimisation"
    terrace: "Check if the tree lies on a phylogenetic terrace"
    uf_boot: "Replicates for ultrafast bootstrap (>=1000)"
    uf_jack: "Replicates for ultrafast jackknife (>=1000)"
    jack_prop: "Subsampling proportion for jackknife (default: 0.5)"
    sampling: "GENE|GENESITE resampling for partitions (default: SITE)"
    boot_trees: "Write bootstrap trees to .ufboot file (default: none)"
    wbt_l: "Like --boot-trees but also writing branch lengths"
    nmax: "Maximum number of iterations (default: 1000)"
    nstep: "Iterations for UFBoot stopping rule (default: 100)"
    bc_or: "Minimum correlation coefficient (default: 0.99)"
    be_ps: "RELL epsilon to break tie (default: 0.5)"
    bnn_i: "Optimize UFBoot trees by NNI on bootstrap alignment"
    boot: "Replicates for bootstrap + ML tree + consensus tree"
    jack: "Replicates for jackknife + ML tree + consensus tree"
    bc_on: "Replicates for bootstrap + consensus tree"
    b_only: "Replicates for bootstrap only"
    t_be: "Transfer bootstrap expectation"
    a_bayes: "approximate Bayes test (Anisimova et al. 2011)"
    lbp: "Replicates for fast local bootstrap probabilities"
    msub: "Amino-acid model source\\n(nuclear, mitochondrial, chloroplast or viral)"
    m_freq: ",...      List of state frequencies"
    m_rate: ",...      List of rate heterogeneity among sites\\n(e.g. -mrate E,I,G,I+G,R is used for -m MF)"
    cm_in: "Min categories for FreeRate model [+R] (default: 2)"
    cmax: "Max categories for FreeRate model [+R] (default: 10)"
    merit: "|AICc|BIC  Akaike|Bayesian information criterion (default: BIC)"
    mtree: "Perform full tree search for every model"
    m_redo: "Ignore .model.gz checkpoint file (default: OFF)"
    madd: ",...       List of mixture models to consider"
    m_def: "Model definition NEXUS file (see Manual)"
    modelo_matic: "Find best codon/protein/DNA models (Whelan et al. 2015)"
    r_cluster: "Percentage of partition pairs for rcluster algorithm"
    r_cluster_f: "Percentage of partition pairs for rclusterf algorithm"
    r_cluster_max: "Max number of partition pairs (default: 10*partitions)"
    alpha_min: "Min Gamma shape parameter for site rates (default: 0.02)"
    gamma_median: "Median approximation for +G site rates (default: mean)"
    rate: "Write empirical Bayesian site rates to .rate file"
    ml_rate: "Write maximum likelihood site rates to .mlrate file"
    input_counts_file: "Input counts file (see manual)"
    mix_opt: "Optimize mixture weights (default: detect)"
    asc_ascertainment_bias: "...+ASC           Ascertainment bias correction"
    tree_freq: "Input tree to infer site frequency model"
    site_freq: "Input site frequency model file"
    freq_max: "Posterior maximum instead of mean approximation"
    trees: "Set of trees to evaluate log-likelihoods"
    test: "Replicates for topology test"
    test_weight: "Perform weighted KH and SH tests"
    test_au: "Approximately unbiased (AU) test (Shimodaira 2002)"
    site_lh: "Write site log-likelihoods to .sitelh file"
    ancestral: "Ancestral state reconstruction by empirical Bayes"
    asr_min: "Min probability of ancestral state (default: equil freq)"
    sym_test: "Perform three tests of symmetry"
    sym_test_only: "Do --symtest then exist"
    sym_test_remove_bad: "Do --symtest and remove bad partitions"
    sym_test_remove_good: "Do --symtest and remove good partitions"
    sym_test_type: "|INT  Use MARginal/INTernal test when removing partitions"
    sym_test_pval: "P-value cutoff (default: 0.05)"
    sym_test_keep_zero: "Keep NAs in the tests"
    gcf: "Set of source trees for gene concordance factor (gCF)"
    df_tree: "Write discordant trees associated with gDF1"
    scf: "Number of quartets for site concordance factor (sCF)"
    cf_verbose: "Write CF per tree/locus to cf.stat_tree/_loci"
    sup_min: "Min split support, 0.5 for majority-rule consensus\\n(default: 0, extended consensus)"
    burnin: "Burnin number of trees to ignore"
    con_tree: "Compute consensus tree to .contree file"
    con_net: "Computing consensus network to .nex file"
    support: "Assign support values into this tree from -t trees"
    sup_tag: "Node name (or ALL) to assign tree IDs where node occurs"
    tree_dist_all: "Compute all-to-all RF distances for -t trees"
    tree_dist: "Compute RF distances between -t trees and this set"
    tree_dist_two: "Like -rf but trees can have unequal taxon sets"
    taxa_yuleharding_random: "No. taxa for Yule-Harding random tree"
    rand: "|CAT|BAL   UNIform | CATerpillar | BALanced random tree"
    rlen: "NUM NUM   min, mean, and max random branch lengths"
    keep_ident: "Keep identical sequences (default: remove & finally add)"
    cp_time: "Checkpoint time interval in seconds (default: 60)"
    bl_fix: "Fix branch lengths of user tree passed via -te"
    bl_scale: "Scale branch lengths of user tree passed via -t"
    blm_in: "Min branch length for optimization (default 0.000001)"
    bl_max: "Max branch length for optimization (default 100)"
    w_slr: "Write site log-likelihoods per rate category"
    w_slm: "Write site log-likelihoods per mixture class"
    wsl_mr: "Write site log-likelihoods per mixture+rate class"
    w_spr: "Write site probabilities per rate category"
    ws_pm: "Write site probabilities per mixture class"
    wsp_mr: "Write site probabilities per mixture+rate class"
    part_lh: "Write partition log-likelihoods to .partlh file"
    no_out_files: "Suppress printing output files"
    eigen_lib: "Use Eigen3 library"
    aln_info: "Print alignment sites statistics to .alninfo"
  }
  output {
    File out_stdout = stdout()
  }
}