class: CommandLineTool
id: iqtree.cwl
inputs:
- id: s
  doc: '[,...,FILE]   PHYLIP/FASTA/NEXUS/CLUSTAL/MSF alignment file(s)'
  type: File
  inputBinding:
    prefix: -s
- id: s
  doc: Directory of alignment files
  type: string
  inputBinding:
    prefix: -s
- id: seqtype
  doc: 'BIN, DNA, AA, NT2AA, CODON, MORPH (default: auto-detect)'
  type: string
  inputBinding:
    prefix: --seqtype
- id: t
  doc: '|PARS|RAND    Starting tree (default: 99 parsimony and BIONJ)'
  type: File
  inputBinding:
    prefix: -t
- id: o
  doc: '[,...,TAX]     Outgroup taxon (list) for writing .treefile'
  type: string
  inputBinding:
    prefix: -o
- id: prefix
  doc: 'Prefix for all output files (default: aln/partition)'
  type: string
  inputBinding:
    prefix: --prefix
- id: seed
  doc: Random seed number, normally used for debugging purpose
  type: string
  inputBinding:
    prefix: --seed
- id: safe
  doc: Safe likelihood kernel to avoid numerical underflow
  type: boolean
  inputBinding:
    prefix: --safe
- id: mem
  doc: '[G|M|%]     Maximal RAM usage in GB | MB | %'
  type: string
  inputBinding:
    prefix: --mem
- id: runs
  doc: 'Number of indepedent runs (default: 1)'
  type: string
  inputBinding:
    prefix: --runs
- id: redo
  doc: 'Ignore checkpoint and overwrite outputs (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --redo
- id: verbose
  doc: Verbose mode, printing more messages to screen
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet mode, suppress printing to screen (stdout)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: f_const
  doc: ',...,fN    Add constant patterns into alignment (N=no. states)'
  type: string
  inputBinding:
    prefix: -fconst
- id: epsilon
  doc: Likelihood epsilon for parameter estimate (default 0.01)
  type: string
  inputBinding:
    prefix: --epsilon
- id: t
  doc: '|AUTO          No. cores/threads or AUTO-detect (default: 1)'
  type: string
  inputBinding:
    prefix: -T
- id: threads_max
  doc: 'Max number of threads for -T AUTO (default: all cores)'
  type: string
  inputBinding:
    prefix: --threads-max
- id: p
  doc: '|DIR          NEXUS/RAxML partition file or directory with alignments Edge-linked
    proportional partition model'
  type: File
  inputBinding:
    prefix: -p
- id: q
  doc: '|DIR          Like -p but edge-linked equal partition model '
  type: File
  inputBinding:
    prefix: -q
- id: q
  doc: '|DIR          Like -p but edge-unlinked partition model'
  type: File
  inputBinding:
    prefix: -Q
- id: s
  doc: '|DIR          Like -p but separate tree inference'
  type: File
  inputBinding:
    prefix: -S
- id: subsample
  doc: Randomly sub-sample partitions (negative for complement)
  type: string
  inputBinding:
    prefix: --subsample
- id: subsample_seed
  doc: Random number seed for --subsample
  type: string
  inputBinding:
    prefix: --subsample-seed
- id: l_map
  doc: Number of quartets for likelihood mapping analysis
  type: string
  inputBinding:
    prefix: --lmap
- id: lmc_lust
  doc: NEXUS file containing clusters for likelihood mapping
  type: File
  inputBinding:
    prefix: --lmclust
- id: quartet_lh
  doc: Print quartet log-likelihoods to .quartetlh file
  type: boolean
  inputBinding:
    prefix: --quartetlh
- id: nin_it
  doc: 'Number of initial parsimony trees (default: 100)'
  type: string
  inputBinding:
    prefix: --ninit
- id: ntop
  doc: 'Number of top initial trees (default: 20)'
  type: string
  inputBinding:
    prefix: --ntop
- id: n_best
  doc: 'Number of best trees retained during search (defaut: 5)'
  type: string
  inputBinding:
    prefix: --nbest
- id: n
  doc: 'Fix number of iterations to stop (default: OFF)'
  type: string
  inputBinding:
    prefix: -n
- id: n_stop
  doc: 'Number of unsuccessful iterations to stop (default: 100)'
  type: string
  inputBinding:
    prefix: --nstop
- id: perturb
  doc: 'Perturbation strength for randomized NNI (default: 0.5)'
  type: string
  inputBinding:
    prefix: --perturb
- id: radius
  doc: 'Radius for parsimony SPR search (default: 6)'
  type: string
  inputBinding:
    prefix: --radius
- id: all_nni
  doc: 'Perform more thorough NNI search (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --allnni
- id: g
  doc: (Multifurcating) topological constraint tree file
  type: File
  inputBinding:
    prefix: -g
- id: fast
  doc: Fast search to resemble FastTree
  type: boolean
  inputBinding:
    prefix: --fast
- id: poly_to_my
  doc: Collapse near-zero branches into polytomy
  type: boolean
  inputBinding:
    prefix: --polytomy
- id: tree_fix
  doc: Fix -t tree (no tree search performed)
  type: boolean
  inputBinding:
    prefix: --tree-fix
- id: t_reels
  doc: Write locally optimal trees into .treels file
  type: boolean
  inputBinding:
    prefix: --treels
- id: show_lh
  doc: Compute tree likelihood without optimisation
  type: boolean
  inputBinding:
    prefix: --show-lh
- id: terrace
  doc: Check if the tree lies on a phylogenetic terrace
  type: boolean
  inputBinding:
    prefix: --terrace
- id: uf_boot
  doc: Replicates for ultrafast bootstrap (>=1000)
  type: string
  inputBinding:
    prefix: --ufboot
- id: uf_jack
  doc: Replicates for ultrafast jackknife (>=1000)
  type: string
  inputBinding:
    prefix: --ufjack
- id: jack_prop
  doc: 'Subsampling proportion for jackknife (default: 0.5)'
  type: string
  inputBinding:
    prefix: --jack-prop
- id: sampling
  doc: 'GENE|GENESITE resampling for partitions (default: SITE)'
  type: string
  inputBinding:
    prefix: --sampling
- id: boot_trees
  doc: 'Write bootstrap trees to .ufboot file (default: none)'
  type: boolean
  inputBinding:
    prefix: --boot-trees
- id: wbt_l
  doc: Like --boot-trees but also writing branch lengths
  type: boolean
  inputBinding:
    prefix: --wbtl
- id: nmax
  doc: 'Maximum number of iterations (default: 1000)'
  type: string
  inputBinding:
    prefix: --nmax
- id: nstep
  doc: 'Iterations for UFBoot stopping rule (default: 100)'
  type: string
  inputBinding:
    prefix: --nstep
- id: bc_or
  doc: 'Minimum correlation coefficient (default: 0.99)'
  type: string
  inputBinding:
    prefix: --bcor
- id: be_ps
  doc: 'RELL epsilon to break tie (default: 0.5)'
  type: string
  inputBinding:
    prefix: --beps
- id: bnn_i
  doc: Optimize UFBoot trees by NNI on bootstrap alignment
  type: boolean
  inputBinding:
    prefix: --bnni
- id: boot
  doc: Replicates for bootstrap + ML tree + consensus tree
  type: string
  inputBinding:
    prefix: --boot
- id: jack
  doc: Replicates for jackknife + ML tree + consensus tree
  type: string
  inputBinding:
    prefix: --jack
- id: jack_prop
  doc: 'Subsampling proportion for jackknife (default: 0.5)'
  type: string
  inputBinding:
    prefix: --jack-prop
- id: bc_on
  doc: Replicates for bootstrap + consensus tree
  type: string
  inputBinding:
    prefix: --bcon
- id: b_only
  doc: Replicates for bootstrap only
  type: string
  inputBinding:
    prefix: --bonly
- id: t_be
  doc: Transfer bootstrap expectation
  type: boolean
  inputBinding:
    prefix: --tbe
- id: alrt
  doc: Replicates for SH approximate likelihood ratio test
  type: string
  inputBinding:
    prefix: --alrt
- id: alrt
  doc: 0             Parametric aLRT test (Anisimova and Gascuel 2006)
  type: boolean
  inputBinding:
    prefix: --alrt
- id: a_bayes
  doc: approximate Bayes test (Anisimova et al. 2011)
  type: boolean
  inputBinding:
    prefix: --abayes
- id: lbp
  doc: Replicates for fast local bootstrap probabilities
  type: string
  inputBinding:
    prefix: --lbp
- id: m
  doc: Standard model selection (like jModelTest, ProtTest)
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: Standard model selection followed by tree inference
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: Extended model selection with FreeRate heterogeneity
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: Extended model selection followed by tree inference
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: '...+LM            Additionally test Lie Markov models'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+LMRY          Additionally test Lie Markov models with RY symmetry'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+LMWS          Additionally test Lie Markov models with WS symmetry'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+LMMK          Additionally test Lie Markov models with MK symmetry'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+LMSS          Additionally test strand-symmetric models'
  type: boolean
  inputBinding:
    prefix: -m
- id: m_set
  doc: Restrict search to models supported by other programs (raxml, phyml or mrbayes)
  type: string
  inputBinding:
    prefix: --mset
- id: m_set
  doc: ',...       Comma-separated model list (e.g. -mset WAG,LG,JTT)'
  type: string
  inputBinding:
    prefix: --mset
- id: msub
  doc: Amino-acid model source (nuclear, mitochondrial, chloroplast or viral)
  type: string
  inputBinding:
    prefix: --msub
- id: m_freq
  doc: ',...      List of state frequencies'
  type: string
  inputBinding:
    prefix: --mfreq
- id: m_rate
  doc: ',...      List of rate heterogeneity among sites (e.g. -mrate E,I,G,I+G,R
    is used for -m MF)'
  type: string
  inputBinding:
    prefix: --mrate
- id: cm_in
  doc: 'Min categories for FreeRate model [+R] (default: 2)'
  type: string
  inputBinding:
    prefix: --cmin
- id: cmax
  doc: 'Max categories for FreeRate model [+R] (default: 10)'
  type: string
  inputBinding:
    prefix: --cmax
- id: merit
  doc: '|AICc|BIC  Akaike|Bayesian information criterion (default: BIC)'
  type: string
  inputBinding:
    prefix: --merit
- id: mtree
  doc: Perform full tree search for every model
  type: boolean
  inputBinding:
    prefix: --mtree
- id: m_redo
  doc: 'Ignore .model.gz checkpoint file (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --mredo
- id: madd
  doc: ',...       List of mixture models to consider'
  type: string
  inputBinding:
    prefix: --madd
- id: m_def
  doc: Model definition NEXUS file (see Manual)
  type: File
  inputBinding:
    prefix: --mdef
- id: modelo_matic
  doc: Find best codon/protein/DNA models (Whelan et al. 2015)
  type: boolean
  inputBinding:
    prefix: --modelomatic
- id: merge
  doc: Merge partitions to increase model fit
  type: boolean
  inputBinding:
    prefix: --merge
- id: merge
  doc: '|rcluster|rclusterf Set merging algorithm (default: rclusterf)'
  type: string
  inputBinding:
    prefix: --merge
- id: merge_model
  doc: '1|all  Use only 1 or all models for merging (default: 1)'
  type: boolean
  inputBinding:
    prefix: --merge-model
- id: merge_model
  doc: ',... Comma-separated model list for merging'
  type: string
  inputBinding:
    prefix: --merge-model
- id: merge_rate
  doc: '1|all   Use only 1 or all rate heterogeneity (default: 1)'
  type: boolean
  inputBinding:
    prefix: --merge-rate
- id: merge_rate
  doc: ',... Comma-separated rate list for merging'
  type: string
  inputBinding:
    prefix: --merge-rate
- id: r_cluster
  doc: Percentage of partition pairs for rcluster algorithm
  type: string
  inputBinding:
    prefix: --rcluster
- id: r_cluster_f
  doc: Percentage of partition pairs for rclusterf algorithm
  type: string
  inputBinding:
    prefix: --rclusterf
- id: r_cluster_max
  doc: 'Max number of partition pairs (default: 10*partitions)'
  type: string
  inputBinding:
    prefix: --rcluster-max
- id: m
  doc: '...+F             Empirically counted frequencies from alignment'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FO            Optimized frequencies by maximum-likelihood'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FQ            Equal frequencies'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FRY           For DNA, freq(A+G)=1/2=freq(C+T)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FWS           For DNA, freq(A+T)=1/2=freq(C+G)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FMK           For DNA, freq(A+C)=1/2=freq(G+T)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+Fabcd         4-digit constraint on ACGT frequency (e.g. +F1221 means
    f_A=f_T, f_C=f_G)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+FU            Amino-acid frequencies given protein matrix'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+F1x4          Equal NT frequencies over three codon positions'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+F3x4          Unequal NT frequencies over three codon positions'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+I             A proportion of invariable sites'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+G[n]          Discrete Gamma model with n categories (default n=4)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...*G[n]          Discrete Gamma model with unlinked model parameters'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+I+G[n]        Invariable sites plus Gamma model with n categories'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+R[n]          FreeRate model with n categories (default n=4)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...*R[n]          FreeRate model with unlinked model parameters'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+I+R[n]        Invariable sites plus FreeRate model with n categories'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+Hn            Heterotachy model with n classes'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...*Hn            Heterotachy model with n classes and unlinked parameters'
  type: boolean
  inputBinding:
    prefix: -m
- id: alpha_min
  doc: 'Min Gamma shape parameter for site rates (default: 0.02)'
  type: string
  inputBinding:
    prefix: --alpha-min
- id: gamma_median
  doc: 'Median approximation for +G site rates (default: mean)'
  type: boolean
  inputBinding:
    prefix: --gamma-median
- id: rate
  doc: Write empirical Bayesian site rates to .rate file
  type: boolean
  inputBinding:
    prefix: --rate
- id: ml_rate
  doc: Write maximum likelihood site rates to .mlrate file
  type: boolean
  inputBinding:
    prefix: --mlrate
- id: s
  doc: Input counts file (see manual)
  type: File
  inputBinding:
    prefix: -s
- id: m
  doc: '...+P             DNA substitution model (see above) used with PoMo'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+N<POPSIZE>    Virtual population size (default: 9)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+WB|WH|S]      Weighted binomial sampling'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+WH            Weighted hypergeometric sampling'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+S             Sampled sampling'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '...+G[n]          Discrete Gamma rate with n categories (default n=4)'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '"MIX{m1,...,mK}"  Mixture model with K components'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '"FMIX{f1,...fK}"  Frequency mixture model with K components'
  type: boolean
  inputBinding:
    prefix: -m
- id: mix_opt
  doc: 'Optimize mixture weights (default: detect)'
  type: boolean
  inputBinding:
    prefix: --mix-opt
- id: m
  doc: '...+ASC           Ascertainment bias correction'
  type: boolean
  inputBinding:
    prefix: -m
- id: tree_freq
  doc: Input tree to infer site frequency model
  type: File
  inputBinding:
    prefix: --tree-freq
- id: site_freq
  doc: Input site frequency model file
  type: File
  inputBinding:
    prefix: --site-freq
- id: freq_max
  doc: Posterior maximum instead of mean approximation
  type: boolean
  inputBinding:
    prefix: --freq-max
- id: trees
  doc: Set of trees to evaluate log-likelihoods
  type: File
  inputBinding:
    prefix: --trees
- id: test
  doc: Replicates for topology test
  type: string
  inputBinding:
    prefix: --test
- id: test_weight
  doc: Perform weighted KH and SH tests
  type: boolean
  inputBinding:
    prefix: --test-weight
- id: test_au
  doc: Approximately unbiased (AU) test (Shimodaira 2002)
  type: boolean
  inputBinding:
    prefix: --test-au
- id: site_lh
  doc: Write site log-likelihoods to .sitelh file
  type: boolean
  inputBinding:
    prefix: --sitelh
- id: ancestral
  doc: Ancestral state reconstruction by empirical Bayes
  type: boolean
  inputBinding:
    prefix: --ancestral
- id: asr_min
  doc: 'Min probability of ancestral state (default: equil freq)'
  type: string
  inputBinding:
    prefix: --asr-min
- id: sym_test
  doc: Perform three tests of symmetry
  type: boolean
  inputBinding:
    prefix: --symtest
- id: sym_test_only
  doc: Do --symtest then exist
  type: boolean
  inputBinding:
    prefix: --symtest-only
- id: sym_test_remove_bad
  doc: Do --symtest and remove bad partitions
  type: boolean
  inputBinding:
    prefix: --symtest-remove-bad
- id: sym_test_remove_good
  doc: Do --symtest and remove good partitions
  type: boolean
  inputBinding:
    prefix: --symtest-remove-good
- id: sym_test_type
  doc: '|INT  Use MARginal/INTernal test when removing partitions'
  type: string
  inputBinding:
    prefix: --symtest-type
- id: sym_test_pval
  doc: 'P-value cutoff (default: 0.05)'
  type: string
  inputBinding:
    prefix: --symtest-pval
- id: sym_test_keep_zero
  doc: Keep NAs in the tests
  type: boolean
  inputBinding:
    prefix: --symtest-keep-zero
- id: t
  doc: Reference tree to assign concordance factor
  type: File
  inputBinding:
    prefix: -t
- id: gcf
  doc: Set of source trees for gene concordance factor (gCF)
  type: File
  inputBinding:
    prefix: --gcf
- id: df_tree
  doc: Write discordant trees associated with gDF1
  type: boolean
  inputBinding:
    prefix: --df-tree
- id: scf
  doc: Number of quartets for site concordance factor (sCF)
  type: string
  inputBinding:
    prefix: --scf
- id: s
  doc: Sequence alignment for --scf
  type: File
  inputBinding:
    prefix: -s
- id: p
  doc: '|DIR          Partition file or directory for --scf'
  type: File
  inputBinding:
    prefix: -p
- id: cf_verbose
  doc: Write CF per tree/locus to cf.stat_tree/_loci
  type: boolean
  inputBinding:
    prefix: --cf-verbose
- id: t
  doc: Set of input trees for consensus reconstruction
  type: File
  inputBinding:
    prefix: -t
- id: sup_min
  doc: 'Min split support, 0.5 for majority-rule consensus (default: 0, extended consensus)'
  type: string
  inputBinding:
    prefix: --sup-min
- id: burnin
  doc: Burnin number of trees to ignore
  type: string
  inputBinding:
    prefix: --burnin
- id: con_tree
  doc: Compute consensus tree to .contree file
  type: boolean
  inputBinding:
    prefix: --con-tree
- id: con_net
  doc: Computing consensus network to .nex file
  type: boolean
  inputBinding:
    prefix: --con-net
- id: support
  doc: Assign support values into this tree from -t trees
  type: File
  inputBinding:
    prefix: --support
- id: sup_tag
  doc: Node name (or ALL) to assign tree IDs where node occurs
  type: string
  inputBinding:
    prefix: --suptag
- id: tree_dist_all
  doc: Compute all-to-all RF distances for -t trees
  type: boolean
  inputBinding:
    prefix: --tree-dist-all
- id: tree_dist
  doc: Compute RF distances between -t trees and this set
  type: File
  inputBinding:
    prefix: --tree-dist
- id: tree_dist2
  doc: Like -rf but trees can have unequal taxon sets
  type: File
  inputBinding:
    prefix: --tree-dist2
- id: r
  doc: No. taxa for Yule-Harding random tree
  type: string
  inputBinding:
    prefix: -r
- id: rand
  doc: '|CAT|BAL   UNIform | CATerpillar | BALanced random tree'
  type: string
  inputBinding:
    prefix: --rand
- id: rlen
  doc: NUM NUM   min, mean, and max random branch lengths
  type: string
  inputBinding:
    prefix: --rlen
- id: keep_ident
  doc: 'Keep identical sequences (default: remove & finally add)'
  type: boolean
  inputBinding:
    prefix: --keep-ident
- id: cp_time
  doc: 'Checkpoint time interval in seconds (default: 60)'
  type: string
  inputBinding:
    prefix: --cptime
- id: bl_fix
  doc: Fix branch lengths of user tree passed via -te
  type: boolean
  inputBinding:
    prefix: -blfix
- id: bl_scale
  doc: Scale branch lengths of user tree passed via -t
  type: boolean
  inputBinding:
    prefix: -blscale
- id: blm_in
  doc: Min branch length for optimization (default 0.000001)
  type: boolean
  inputBinding:
    prefix: -blmin
- id: bl_max
  doc: Max branch length for optimization (default 100)
  type: boolean
  inputBinding:
    prefix: -blmax
- id: w_slr
  doc: Write site log-likelihoods per rate category
  type: boolean
  inputBinding:
    prefix: -wslr
- id: w_slm
  doc: Write site log-likelihoods per mixture class
  type: boolean
  inputBinding:
    prefix: -wslm
- id: wsl_mr
  doc: Write site log-likelihoods per mixture+rate class
  type: boolean
  inputBinding:
    prefix: -wslmr
- id: w_spr
  doc: Write site probabilities per rate category
  type: boolean
  inputBinding:
    prefix: -wspr
- id: ws_pm
  doc: Write site probabilities per mixture class
  type: boolean
  inputBinding:
    prefix: -wspm
- id: wsp_mr
  doc: Write site probabilities per mixture+rate class
  type: boolean
  inputBinding:
    prefix: -wspmr
- id: part_lh
  doc: Write partition log-likelihoods to .partlh file
  type: boolean
  inputBinding:
    prefix: --partlh
- id: no_out_files
  doc: Suppress printing output files
  type: boolean
  inputBinding:
    prefix: --no-outfiles
- id: eigen_lib
  doc: Use Eigen3 library
  type: boolean
  inputBinding:
    prefix: --eigenlib
- id: aln_info
  doc: Print alignment sites statistics to .alninfo
  type: boolean
  inputBinding:
    prefix: -alninfo
outputs: []
cwlVersion: v1.1
baseCommand:
- iqtree
