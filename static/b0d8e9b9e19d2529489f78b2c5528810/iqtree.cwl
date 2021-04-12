class: CommandLineTool
id: iqtree.cwl
inputs:
- id: in_seqtype
  doc: 'BIN, DNA, AA, NT2AA, CODON, MORPH (default: auto-detect)'
  type: long?
  inputBinding:
    prefix: --seqtype
- id: in_parsrand_starting_tree
  doc: '|PARS|RAND    Starting tree (default: 99 parsimony and BIONJ)'
  type: File?
  inputBinding:
    prefix: -t
- id: in_outgroup_taxon_list
  doc: '[,...,TAX]     Outgroup taxon (list) for writing .treefile'
  type: string?
  inputBinding:
    prefix: -o
- id: in_prefix
  doc: 'Prefix for all output files (default: aln/partition)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_seed
  doc: Random seed number, normally used for debugging purpose
  type: long?
  inputBinding:
    prefix: --seed
- id: in_safe
  doc: Safe likelihood kernel to avoid numerical underflow
  type: boolean?
  inputBinding:
    prefix: --safe
- id: in_mem
  doc: '[G|M|%]     Maximal RAM usage in GB | MB | %'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_runs
  doc: 'Number of indepedent runs (default: 1)'
  type: long?
  inputBinding:
    prefix: --runs
- id: in_verbose
  doc: Verbose mode, printing more messages to screen
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet mode, suppress printing to screen (stdout)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_f_const
  doc: ',...,fN    Add constant patterns into alignment (N=no. states)'
  type: long?
  inputBinding:
    prefix: -fconst
- id: in_epsilon
  doc: Likelihood epsilon for parameter estimate (default 0.01)
  type: long?
  inputBinding:
    prefix: --epsilon
- id: in_auto_coresthreads_default
  doc: '|AUTO          No. cores/threads or AUTO-detect (default: 1)'
  type: long?
  inputBinding:
    prefix: -T
- id: in_threads_max
  doc: 'Max number of threads for -T AUTO (default: all cores)'
  type: long?
  inputBinding:
    prefix: --threads-max
- id: in_redo
  doc: Redo both ModelFinder and tree search
  type: boolean?
  inputBinding:
    prefix: --redo
- id: in_redo_tree
  doc: Restore ModelFinder and only redo tree search
  type: boolean?
  inputBinding:
    prefix: --redo-tree
- id: in_undo
  doc: Revoke finished run, used when changing some options
  type: boolean?
  inputBinding:
    prefix: --undo
- id: in_cp_time
  doc: 'Minimum checkpoint interval (default: 60 sec and adapt)'
  type: long?
  inputBinding:
    prefix: --cptime
- id: in_dir_nexusraxml_partition
  doc: "|DIR          NEXUS/RAxML partition file or directory with alignments\nEdge-linked\
    \ proportional partition model"
  type: File?
  inputBinding:
    prefix: -p
- id: in_dir_edgelinked_model
  doc: '|DIR          Like -p but edge-linked equal partition model'
  type: File?
  inputBinding:
    prefix: -q
- id: in_dir_edgeunlinked_model
  doc: '|DIR          Like -p but edge-unlinked partition model'
  type: File?
  inputBinding:
    prefix: -Q
- id: in_dir_p_separate
  doc: '|DIR          Like -p but separate tree inference'
  type: File?
  inputBinding:
    prefix: -S
- id: in_subsample
  doc: Randomly sub-sample partitions (negative for complement)
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_subsample_seed
  doc: Random number seed for --subsample
  type: long?
  inputBinding:
    prefix: --subsample-seed
- id: in_l_map
  doc: Number of quartets for likelihood mapping analysis
  type: long?
  inputBinding:
    prefix: --lmap
- id: in_lmc_lust
  doc: NEXUS file containing clusters for likelihood mapping
  type: File?
  inputBinding:
    prefix: --lmclust
- id: in_quartet_lh
  doc: Print quartet log-likelihoods to .quartetlh file
  type: boolean?
  inputBinding:
    prefix: --quartetlh
- id: in_nin_it
  doc: 'Number of initial parsimony trees (default: 100)'
  type: long?
  inputBinding:
    prefix: --ninit
- id: in_ntop
  doc: 'Number of top initial trees (default: 20)'
  type: long?
  inputBinding:
    prefix: --ntop
- id: in_n_best
  doc: 'Number of best trees retained during search (defaut: 5)'
  type: long?
  inputBinding:
    prefix: --nbest
- id: in_fix_number_stop
  doc: 'Fix number of iterations to stop (default: OFF)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_n_stop
  doc: 'Number of unsuccessful iterations to stop (default: 100)'
  type: long?
  inputBinding:
    prefix: --nstop
- id: in_perturb
  doc: 'Perturbation strength for randomized NNI (default: 0.5)'
  type: long?
  inputBinding:
    prefix: --perturb
- id: in_radius
  doc: 'Radius for parsimony SPR search (default: 6)'
  type: long?
  inputBinding:
    prefix: --radius
- id: in_all_nni
  doc: 'Perform more thorough NNI search (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --allnni
- id: in_multifurcating_topological_constraint
  doc: (Multifurcating) topological constraint tree file
  type: File?
  inputBinding:
    prefix: -g
- id: in_fast
  doc: Fast search to resemble FastTree
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_poly_to_my
  doc: Collapse near-zero branches into polytomy
  type: boolean?
  inputBinding:
    prefix: --polytomy
- id: in_tree_fix
  doc: Fix -t tree (no tree search performed)
  type: boolean?
  inputBinding:
    prefix: --tree-fix
- id: in_t_reels
  doc: Write locally optimal trees into .treels file
  type: boolean?
  inputBinding:
    prefix: --treels
- id: in_show_lh
  doc: Compute tree likelihood without optimisation
  type: boolean?
  inputBinding:
    prefix: --show-lh
- id: in_terrace
  doc: Check if the tree lies on a phylogenetic terrace
  type: boolean?
  inputBinding:
    prefix: --terrace
- id: in_uf_boot
  doc: Replicates for ultrafast bootstrap (>=1000)
  type: long?
  inputBinding:
    prefix: --ufboot
- id: in_uf_jack
  doc: Replicates for ultrafast jackknife (>=1000)
  type: long?
  inputBinding:
    prefix: --ufjack
- id: in_jack_prop
  doc: 'Subsampling proportion for jackknife (default: 0.5)'
  type: long?
  inputBinding:
    prefix: --jack-prop
- id: in_sampling
  doc: 'GENE|GENESITE resampling for partitions (default: SITE)'
  type: string?
  inputBinding:
    prefix: --sampling
- id: in_boot_trees
  doc: 'Write bootstrap trees to .ufboot file (default: none)'
  type: boolean?
  inputBinding:
    prefix: --boot-trees
- id: in_wbt_l
  doc: Like --boot-trees but also writing branch lengths
  type: boolean?
  inputBinding:
    prefix: --wbtl
- id: in_nmax
  doc: 'Maximum number of iterations (default: 1000)'
  type: long?
  inputBinding:
    prefix: --nmax
- id: in_nstep
  doc: 'Iterations for UFBoot stopping rule (default: 100)'
  type: long?
  inputBinding:
    prefix: --nstep
- id: in_bc_or
  doc: 'Minimum correlation coefficient (default: 0.99)'
  type: long?
  inputBinding:
    prefix: --bcor
- id: in_be_ps
  doc: 'RELL epsilon to break tie (default: 0.5)'
  type: long?
  inputBinding:
    prefix: --beps
- id: in_bnn_i
  doc: Optimize UFBoot trees by NNI on bootstrap alignment
  type: boolean?
  inputBinding:
    prefix: --bnni
- id: in_boot
  doc: Replicates for bootstrap + ML tree + consensus tree
  type: long?
  inputBinding:
    prefix: --boot
- id: in_jack
  doc: Replicates for jackknife + ML tree + consensus tree
  type: long?
  inputBinding:
    prefix: --jack
- id: in_bc_on
  doc: Replicates for bootstrap + consensus tree
  type: long?
  inputBinding:
    prefix: --bcon
- id: in_b_only
  doc: Replicates for bootstrap only
  type: long?
  inputBinding:
    prefix: --bonly
- id: in_t_be
  doc: Transfer bootstrap expectation
  type: boolean?
  inputBinding:
    prefix: --tbe
- id: in_a_bayes
  doc: approximate Bayes test (Anisimova et al. 2011)
  type: boolean?
  inputBinding:
    prefix: --abayes
- id: in_lbp
  doc: Replicates for fast local bootstrap probabilities
  type: long?
  inputBinding:
    prefix: --lbp
- id: in_msub
  doc: "Amino-acid model source\n(nuclear, mitochondrial, chloroplast or viral)"
  type: string?
  inputBinding:
    prefix: --msub
- id: in_m_freq
  doc: ',...      List of state frequencies'
  type: string?
  inputBinding:
    prefix: --mfreq
- id: in_m_rate
  doc: ",...      List of rate heterogeneity among sites\n(e.g. -mrate E,I,G,I+G,R\
    \ is used for -m MF)"
  type: string?
  inputBinding:
    prefix: --mrate
- id: in_cm_in
  doc: 'Min categories for FreeRate model [+R] (default: 2)'
  type: long?
  inputBinding:
    prefix: --cmin
- id: in_cmax
  doc: 'Max categories for FreeRate model [+R] (default: 10)'
  type: long?
  inputBinding:
    prefix: --cmax
- id: in_merit
  doc: '|AICc|BIC  Akaike|Bayesian information criterion (default: BIC)'
  type: string?
  inputBinding:
    prefix: --merit
- id: in_mtree
  doc: Perform full tree search for every model
  type: boolean?
  inputBinding:
    prefix: --mtree
- id: in_madd
  doc: ',...       List of mixture models to consider'
  type: string?
  inputBinding:
    prefix: --madd
- id: in_m_def
  doc: Model definition NEXUS file (see Manual)
  type: File?
  inputBinding:
    prefix: --mdef
- id: in_modelo_matic
  doc: Find best codon/protein/DNA models (Whelan et al. 2015)
  type: boolean?
  inputBinding:
    prefix: --modelomatic
- id: in_r_cluster
  doc: Percentage of partition pairs for rcluster algorithm
  type: long?
  inputBinding:
    prefix: --rcluster
- id: in_r_cluster_f
  doc: Percentage of partition pairs for rclusterf algorithm
  type: long?
  inputBinding:
    prefix: --rclusterf
- id: in_r_cluster_max
  doc: 'Max number of partition pairs (default: 10*partitions)'
  type: long?
  inputBinding:
    prefix: --rcluster-max
- id: in_alpha_min
  doc: 'Min Gamma shape parameter for site rates (default: 0.02)'
  type: long?
  inputBinding:
    prefix: --alpha-min
- id: in_gamma_median
  doc: 'Median approximation for +G site rates (default: mean)'
  type: boolean?
  inputBinding:
    prefix: --gamma-median
- id: in_rate
  doc: Write empirical Bayesian site rates to .rate file
  type: boolean?
  inputBinding:
    prefix: --rate
- id: in_ml_rate
  doc: Write maximum likelihood site rates to .mlrate file
  type: boolean?
  inputBinding:
    prefix: --mlrate
- id: in_input_counts_file
  doc: Input counts file (see manual)
  type: File?
  inputBinding:
    prefix: -s
- id: in_mix_opt
  doc: 'Optimize mixture weights (default: detect)'
  type: boolean?
  inputBinding:
    prefix: --mix-opt
- id: in_asc_ascertainment_bias
  doc: '...+ASC           Ascertainment bias correction'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_tree_freq
  doc: Input tree to infer site frequency model
  type: File?
  inputBinding:
    prefix: --tree-freq
- id: in_site_freq
  doc: Input site frequency model file
  type: File?
  inputBinding:
    prefix: --site-freq
- id: in_freq_max
  doc: Posterior maximum instead of mean approximation
  type: boolean?
  inputBinding:
    prefix: --freq-max
- id: in_trees
  doc: Set of trees to evaluate log-likelihoods
  type: File?
  inputBinding:
    prefix: --trees
- id: in_test
  doc: Replicates for topology test
  type: long?
  inputBinding:
    prefix: --test
- id: in_test_weight
  doc: Perform weighted KH and SH tests
  type: boolean?
  inputBinding:
    prefix: --test-weight
- id: in_test_au
  doc: Approximately unbiased (AU) test (Shimodaira 2002)
  type: boolean?
  inputBinding:
    prefix: --test-au
- id: in_site_lh
  doc: Write site log-likelihoods to .sitelh file
  type: boolean?
  inputBinding:
    prefix: --sitelh
- id: in_ancestral
  doc: Ancestral state reconstruction by empirical Bayes
  type: boolean?
  inputBinding:
    prefix: --ancestral
- id: in_asr_min
  doc: 'Min probability of ancestral state (default: equil freq)'
  type: long?
  inputBinding:
    prefix: --asr-min
- id: in_sym_test
  doc: Perform three tests of symmetry
  type: boolean?
  inputBinding:
    prefix: --symtest
- id: in_sym_test_only
  doc: Do --symtest then exist
  type: boolean?
  inputBinding:
    prefix: --symtest-only
- id: in_sym_test_remove_bad
  doc: Do --symtest and remove bad partitions
  type: boolean?
  inputBinding:
    prefix: --symtest-remove-bad
- id: in_sym_test_remove_good
  doc: Do --symtest and remove good partitions
  type: boolean?
  inputBinding:
    prefix: --symtest-remove-good
- id: in_sym_test_type
  doc: '|INT  Use MARginal/INTernal test when removing partitions'
  type: long?
  inputBinding:
    prefix: --symtest-type
- id: in_sym_test_pval
  doc: 'P-value cutoff (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --symtest-pval
- id: in_sym_test_keep_zero
  doc: Keep NAs in the tests
  type: boolean?
  inputBinding:
    prefix: --symtest-keep-zero
- id: in_gcf
  doc: Set of source trees for gene concordance factor (gCF)
  type: File?
  inputBinding:
    prefix: --gcf
- id: in_df_tree
  doc: Write discordant trees associated with gDF1
  type: boolean?
  inputBinding:
    prefix: --df-tree
- id: in_scf
  doc: Number of quartets for site concordance factor (sCF)
  type: long?
  inputBinding:
    prefix: --scf
- id: in_cf_verbose
  doc: Write CF per tree/locus to cf.stat_tree/_loci
  type: boolean?
  inputBinding:
    prefix: --cf-verbose
- id: in_cf_quartet
  doc: Write sCF for all resampled quartets to .cf.quartet
  type: boolean?
  inputBinding:
    prefix: --cf-quartet
- id: in_date_tip
  doc: Tip dates as a real number or YYYY-MM-DD
  type: long?
  inputBinding:
    prefix: --date-tip
- id: in_date_root
  doc: Root date as a real number or YYYY-MM-DD
  type: long?
  inputBinding:
    prefix: --date-root
- id: in_date_ci
  doc: Number of replicates to compute confidence interval
  type: long?
  inputBinding:
    prefix: --date-ci
- id: in_clock_sd
  doc: 'Std-dev for lognormal relaxed clock (default: 0.2)'
  type: long?
  inputBinding:
    prefix: --clock-sd
- id: in_date_no_out_group
  doc: Exclude outgroup from time tree
  type: boolean?
  inputBinding:
    prefix: --date-no-outgroup
- id: in_date_outlier
  doc: Z-score cutoff to remove outlier tips/nodes (e.g. 3)
  type: long?
  inputBinding:
    prefix: --date-outlier
- id: in_date_options
  doc: '".."  Extra options passing directly to LSD2'
  type: boolean?
  inputBinding:
    prefix: --date-options
- id: in_dating
  doc: 'Dating method: LSD for least square dating (default)'
  type: string?
  inputBinding:
    prefix: --dating
- id: in_sup_min
  doc: "Min split support, 0.5 for majority-rule consensus\n(default: 0, extended\
    \ consensus)"
  type: long?
  inputBinding:
    prefix: --sup-min
- id: in_burnin
  doc: Burnin number of trees to ignore
  type: long?
  inputBinding:
    prefix: --burnin
- id: in_con_tree
  doc: Compute consensus tree to .contree file
  type: boolean?
  inputBinding:
    prefix: --con-tree
- id: in_con_net
  doc: Computing consensus network to .nex file
  type: boolean?
  inputBinding:
    prefix: --con-net
- id: in_support
  doc: Assign support values into this tree from -t trees
  type: File?
  inputBinding:
    prefix: --support
- id: in_sup_tag
  doc: Node name (or ALL) to assign tree IDs where node occurs
  type: string?
  inputBinding:
    prefix: --suptag
- id: in_tree_dist_all
  doc: Compute all-to-all RF distances for -t trees
  type: boolean?
  inputBinding:
    prefix: --tree-dist-all
- id: in_tree_dist
  doc: Compute RF distances between -t trees and this set
  type: File?
  inputBinding:
    prefix: --tree-dist
- id: in_tree_dist_two
  doc: Like -rf but trees can have unequal taxon sets
  type: File?
  inputBinding:
    prefix: --tree-dist2
- id: in_taxa_yuleharding_tree
  doc: No. taxa for Yule-Harding random tree
  type: long?
  inputBinding:
    prefix: -r
- id: in_rand
  doc: '|CAT|BAL   UNIform | CATerpillar | BALanced random tree'
  type: string?
  inputBinding:
    prefix: --rand
- id: in_rlen
  doc: NUM NUM   min, mean, and max random branch lengths
  type: long?
  inputBinding:
    prefix: --rlen
- id: in_keep_ident
  doc: 'Keep identical sequences (default: remove & finally add)'
  type: boolean?
  inputBinding:
    prefix: --keep-ident
- id: in_bl_fix
  doc: Fix branch lengths of user tree passed via -te
  type: boolean?
  inputBinding:
    prefix: -blfix
- id: in_bl_scale
  doc: Scale branch lengths of user tree passed via -t
  type: boolean?
  inputBinding:
    prefix: -blscale
- id: in_blm_in
  doc: Min branch length for optimization (default 0.000001)
  type: boolean?
  inputBinding:
    prefix: -blmin
- id: in_bl_max
  doc: Max branch length for optimization (default 100)
  type: boolean?
  inputBinding:
    prefix: -blmax
- id: in_w_slr
  doc: Write site log-likelihoods per rate category
  type: boolean?
  inputBinding:
    prefix: -wslr
- id: in_w_slm
  doc: Write site log-likelihoods per mixture class
  type: boolean?
  inputBinding:
    prefix: -wslm
- id: in_wsl_mr
  doc: Write site log-likelihoods per mixture+rate class
  type: boolean?
  inputBinding:
    prefix: -wslmr
- id: in_w_spr
  doc: Write site probabilities per rate category
  type: boolean?
  inputBinding:
    prefix: -wspr
- id: in_ws_pm
  doc: Write site probabilities per mixture class
  type: boolean?
  inputBinding:
    prefix: -wspm
- id: in_wsp_mr
  doc: Write site probabilities per mixture+rate class
  type: boolean?
  inputBinding:
    prefix: -wspmr
- id: in_part_lh
  doc: Write partition log-likelihoods to .partlh file
  type: boolean?
  inputBinding:
    prefix: --partlh
- id: in_no_out_files
  doc: Suppress printing output files
  type: boolean?
  inputBinding:
    prefix: --no-outfiles
- id: in_eigen_lib
  doc: Use Eigen3 library
  type: boolean?
  inputBinding:
    prefix: --eigenlib
- id: in_aln_info
  doc: Print alignment sites statistics to .alninfo
  type: boolean?
  inputBinding:
    prefix: -alninfo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/iqtree:2.1.2--h56fc30b_0
cwlVersion: v1.1
baseCommand:
- iqtree
