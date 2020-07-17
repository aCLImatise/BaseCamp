version 1.0

task Iqtree {
  input {
    String? seqtype
    File? parsrand_default_parsimony
    String? outgroup_taxon_list
    String? prefix
    String? seed
    Boolean? safe
    String? mem
    String? runs
    Boolean? redo
    Boolean? verbose
    Boolean? quiet
    String? f_const
    String? epsilon
    String? auto_coresthreads_default
    String? threads_max
    File? dir_nexusraxml_partition
    File? dir_p_edgelinked
    File? dir_p_edgeunlinked
    File? dir_p_separate
    String? subsample
    String? subsample_seed
    String? l_map
    File? lmc_lust
    Boolean? quartet_lh
    String? nin_it
    String? ntop
    String? n_best
    String? fix_number_stop
    String? n_stop
    String? perturb
    String? radius
    Boolean? all_nni
    File? multifurcating_tree_file
    Boolean? fast
    Boolean? poly_to_my
    Boolean? tree_fix
    Boolean? t_reels
    Boolean? show_lh
    Boolean? terrace
    String? uf_boot
    String? uf_jack
    String? jack_prop
    String? sampling
    Boolean? boot_trees
    Boolean? wbt_l
    String? nmax
    String? nstep
    String? bc_or
    String? be_ps
    Boolean? bnn_i
    String? boot
    String? jack
    String? bc_on
    String? b_only
    Boolean? t_be
    Boolean? a_bayes
    String? lbp
    String? msub
    String? m_freq
    String? m_rate
    String? cm_in
    String? cmax
    String? merit
    Boolean? mtree
    Boolean? m_redo
    String? madd
    File? m_def
    Boolean? modelo_matic
    String? r_cluster
    String? r_cluster_f
    String? r_cluster_max
    String? alpha_min
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
    String? test
    Boolean? test_weight
    Boolean? test_au
    Boolean? site_lh
    Boolean? ancestral
    String? asr_min
    Boolean? sym_test
    Boolean? sym_test_only
    Boolean? sym_test_remove_bad
    Boolean? sym_test_remove_good
    String? sym_test_type
    String? sym_test_pval
    Boolean? sym_test_keep_zero
    File? gcf
    Boolean? df_tree
    String? scf
    Boolean? cf_verbose
    String? sup_min
    String? burnin
    Boolean? con_tree
    Boolean? con_net
    File? support
    String? sup_tag
    Boolean? tree_dist_all
    File? tree_dist
    File? tree_dist_two
    String? taxa_yuleharding_random
    String? rand
    String? rlen
    Boolean? keep_ident
    String? cp_time
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
      ~{if defined(parsrand_default_parsimony) then ("-t " +  '"' + parsrand_default_parsimony + '"') else ""} \
      ~{if defined(outgroup_taxon_list) then ("-o " +  '"' + outgroup_taxon_list + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--safe" false="" safe} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{true="--redo" false="" redo} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(f_const) then ("-fconst " +  '"' + f_const + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(auto_coresthreads_default) then ("-T " +  '"' + auto_coresthreads_default + '"') else ""} \
      ~{if defined(threads_max) then ("--threads-max " +  '"' + threads_max + '"') else ""} \
      ~{if defined(dir_nexusraxml_partition) then ("-p " +  '"' + dir_nexusraxml_partition + '"') else ""} \
      ~{if defined(dir_p_edgelinked) then ("-q " +  '"' + dir_p_edgelinked + '"') else ""} \
      ~{if defined(dir_p_edgeunlinked) then ("-Q " +  '"' + dir_p_edgeunlinked + '"') else ""} \
      ~{if defined(dir_p_separate) then ("-S " +  '"' + dir_p_separate + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subsample_seed) then ("--subsample-seed " +  '"' + subsample_seed + '"') else ""} \
      ~{if defined(l_map) then ("--lmap " +  '"' + l_map + '"') else ""} \
      ~{if defined(lmc_lust) then ("--lmclust " +  '"' + lmc_lust + '"') else ""} \
      ~{true="--quartetlh" false="" quartet_lh} \
      ~{if defined(nin_it) then ("--ninit " +  '"' + nin_it + '"') else ""} \
      ~{if defined(ntop) then ("--ntop " +  '"' + ntop + '"') else ""} \
      ~{if defined(n_best) then ("--nbest " +  '"' + n_best + '"') else ""} \
      ~{if defined(fix_number_stop) then ("-n " +  '"' + fix_number_stop + '"') else ""} \
      ~{if defined(n_stop) then ("--nstop " +  '"' + n_stop + '"') else ""} \
      ~{if defined(perturb) then ("--perturb " +  '"' + perturb + '"') else ""} \
      ~{if defined(radius) then ("--radius " +  '"' + radius + '"') else ""} \
      ~{true="--allnni" false="" all_nni} \
      ~{if defined(multifurcating_tree_file) then ("-g " +  '"' + multifurcating_tree_file + '"') else ""} \
      ~{true="--fast" false="" fast} \
      ~{true="--polytomy" false="" poly_to_my} \
      ~{true="--tree-fix" false="" tree_fix} \
      ~{true="--treels" false="" t_reels} \
      ~{true="--show-lh" false="" show_lh} \
      ~{true="--terrace" false="" terrace} \
      ~{if defined(uf_boot) then ("--ufboot " +  '"' + uf_boot + '"') else ""} \
      ~{if defined(uf_jack) then ("--ufjack " +  '"' + uf_jack + '"') else ""} \
      ~{if defined(jack_prop) then ("--jack-prop " +  '"' + jack_prop + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{true="--boot-trees" false="" boot_trees} \
      ~{true="--wbtl" false="" wbt_l} \
      ~{if defined(nmax) then ("--nmax " +  '"' + nmax + '"') else ""} \
      ~{if defined(nstep) then ("--nstep " +  '"' + nstep + '"') else ""} \
      ~{if defined(bc_or) then ("--bcor " +  '"' + bc_or + '"') else ""} \
      ~{if defined(be_ps) then ("--beps " +  '"' + be_ps + '"') else ""} \
      ~{true="--bnni" false="" bnn_i} \
      ~{if defined(boot) then ("--boot " +  '"' + boot + '"') else ""} \
      ~{if defined(jack) then ("--jack " +  '"' + jack + '"') else ""} \
      ~{if defined(bc_on) then ("--bcon " +  '"' + bc_on + '"') else ""} \
      ~{if defined(b_only) then ("--bonly " +  '"' + b_only + '"') else ""} \
      ~{true="--tbe" false="" t_be} \
      ~{true="--abayes" false="" a_bayes} \
      ~{if defined(lbp) then ("--lbp " +  '"' + lbp + '"') else ""} \
      ~{if defined(msub) then ("--msub " +  '"' + msub + '"') else ""} \
      ~{if defined(m_freq) then ("--mfreq " +  '"' + m_freq + '"') else ""} \
      ~{if defined(m_rate) then ("--mrate " +  '"' + m_rate + '"') else ""} \
      ~{if defined(cm_in) then ("--cmin " +  '"' + cm_in + '"') else ""} \
      ~{if defined(cmax) then ("--cmax " +  '"' + cmax + '"') else ""} \
      ~{if defined(merit) then ("--merit " +  '"' + merit + '"') else ""} \
      ~{true="--mtree" false="" mtree} \
      ~{true="--mredo" false="" m_redo} \
      ~{if defined(madd) then ("--madd " +  '"' + madd + '"') else ""} \
      ~{if defined(m_def) then ("--mdef " +  '"' + m_def + '"') else ""} \
      ~{true="--modelomatic" false="" modelo_matic} \
      ~{if defined(r_cluster) then ("--rcluster " +  '"' + r_cluster + '"') else ""} \
      ~{if defined(r_cluster_f) then ("--rclusterf " +  '"' + r_cluster_f + '"') else ""} \
      ~{if defined(r_cluster_max) then ("--rcluster-max " +  '"' + r_cluster_max + '"') else ""} \
      ~{if defined(alpha_min) then ("--alpha-min " +  '"' + alpha_min + '"') else ""} \
      ~{true="--gamma-median" false="" gamma_median} \
      ~{true="--rate" false="" rate} \
      ~{true="--mlrate" false="" ml_rate} \
      ~{if defined(input_counts_file) then ("-s " +  '"' + input_counts_file + '"') else ""} \
      ~{true="--mix-opt" false="" mix_opt} \
      ~{true="-m" false="" asc_ascertainment_bias} \
      ~{if defined(tree_freq) then ("--tree-freq " +  '"' + tree_freq + '"') else ""} \
      ~{if defined(site_freq) then ("--site-freq " +  '"' + site_freq + '"') else ""} \
      ~{true="--freq-max" false="" freq_max} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{true="--test-weight" false="" test_weight} \
      ~{true="--test-au" false="" test_au} \
      ~{true="--sitelh" false="" site_lh} \
      ~{true="--ancestral" false="" ancestral} \
      ~{if defined(asr_min) then ("--asr-min " +  '"' + asr_min + '"') else ""} \
      ~{true="--symtest" false="" sym_test} \
      ~{true="--symtest-only" false="" sym_test_only} \
      ~{true="--symtest-remove-bad" false="" sym_test_remove_bad} \
      ~{true="--symtest-remove-good" false="" sym_test_remove_good} \
      ~{if defined(sym_test_type) then ("--symtest-type " +  '"' + sym_test_type + '"') else ""} \
      ~{if defined(sym_test_pval) then ("--symtest-pval " +  '"' + sym_test_pval + '"') else ""} \
      ~{true="--symtest-keep-zero" false="" sym_test_keep_zero} \
      ~{if defined(gcf) then ("--gcf " +  '"' + gcf + '"') else ""} \
      ~{true="--df-tree" false="" df_tree} \
      ~{if defined(scf) then ("--scf " +  '"' + scf + '"') else ""} \
      ~{true="--cf-verbose" false="" cf_verbose} \
      ~{if defined(sup_min) then ("--sup-min " +  '"' + sup_min + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{true="--con-tree" false="" con_tree} \
      ~{true="--con-net" false="" con_net} \
      ~{if defined(support) then ("--support " +  '"' + support + '"') else ""} \
      ~{if defined(sup_tag) then ("--suptag " +  '"' + sup_tag + '"') else ""} \
      ~{true="--tree-dist-all" false="" tree_dist_all} \
      ~{if defined(tree_dist) then ("--tree-dist " +  '"' + tree_dist + '"') else ""} \
      ~{if defined(tree_dist_two) then ("--tree-dist2 " +  '"' + tree_dist_two + '"') else ""} \
      ~{if defined(taxa_yuleharding_random) then ("-r " +  '"' + taxa_yuleharding_random + '"') else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if defined(rlen) then ("--rlen " +  '"' + rlen + '"') else ""} \
      ~{true="--keep-ident" false="" keep_ident} \
      ~{if defined(cp_time) then ("--cptime " +  '"' + cp_time + '"') else ""} \
      ~{true="-blfix" false="" bl_fix} \
      ~{true="-blscale" false="" bl_scale} \
      ~{true="-blmin" false="" blm_in} \
      ~{true="-blmax" false="" bl_max} \
      ~{true="-wslr" false="" w_slr} \
      ~{true="-wslm" false="" w_slm} \
      ~{true="-wslmr" false="" wsl_mr} \
      ~{true="-wspr" false="" w_spr} \
      ~{true="-wspm" false="" ws_pm} \
      ~{true="-wspmr" false="" wsp_mr} \
      ~{true="--partlh" false="" part_lh} \
      ~{true="--no-outfiles" false="" no_out_files} \
      ~{true="--eigenlib" false="" eigen_lib} \
      ~{true="-alninfo" false="" aln_info}
  >>>
  parameter_meta {
    seqtype: "BIN, DNA, AA, NT2AA, CODON, MORPH (default: auto-detect)"
    parsrand_default_parsimony: "|PARS|RAND    Starting tree (default: 99 parsimony and BIONJ)"
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
    auto_coresthreads_default: "|AUTO          No. cores/threads or AUTO-detect (default: 1)"
    threads_max: "Max number of threads for -T AUTO (default: all cores)"
    dir_nexusraxml_partition: "|DIR          NEXUS/RAxML partition file or directory with alignments Edge-linked proportional partition model"
    dir_p_edgelinked: "|DIR          Like -p but edge-linked equal partition model "
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
    multifurcating_tree_file: "(Multifurcating) topological constraint tree file"
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
    msub: "Amino-acid model source (nuclear, mitochondrial, chloroplast or viral)"
    m_freq: ",...      List of state frequencies"
    m_rate: ",...      List of rate heterogeneity among sites (e.g. -mrate E,I,G,I+G,R is used for -m MF)"
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
    sup_min: "Min split support, 0.5 for majority-rule consensus (default: 0, extended consensus)"
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
}