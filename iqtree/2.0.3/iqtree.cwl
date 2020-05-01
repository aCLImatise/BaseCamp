#!/usr/bin/env cwl-runner

baseCommand:
- iqtree
class: CommandLineTool
cwlVersion: v1.0
id: iqtree
inputs:
- doc: '[,...,FILE]   PHYLIP/FASTA/NEXUS/CLUSTAL/MSF alignment file(s)'
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: Directory of alignment files
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: 'BIN, DNA, AA, NT2AA, CODON, MORPH (default: auto-detect)'
  id: seqtype
  inputBinding:
    prefix: --seqtype
  type: string
- doc: '|PARS|RAND    Starting tree (default: 99 parsimony and BIONJ)'
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: '[,...,TAX]     Outgroup taxon (list) for writing .treefile'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'Prefix for all output files (default: aln/partition)'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Random seed number, normally used for debugging purpose
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: Safe likelihood kernel to avoid numerical underflow
  id: safe
  inputBinding:
    prefix: --safe
  type: boolean
- doc: '[G|M|%]     Maximal RAM usage in GB | MB | %'
  id: mem
  inputBinding:
    prefix: --mem
  type: string
- doc: 'Number of indepedent runs (default: 1)'
  id: runs
  inputBinding:
    prefix: --runs
  type: string
- doc: 'Ignore checkpoint and overwrite outputs (default: OFF)'
  id: redo
  inputBinding:
    prefix: --redo
  type: boolean
- doc: Verbose mode, printing more messages to screen
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet mode, suppress printing to screen (stdout)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: ',...,fN    Add constant patterns into alignment (N=no. states)'
  id: f_const
  inputBinding:
    prefix: -fconst
  type: string
- doc: Likelihood epsilon for parameter estimate (default 0.01)
  id: epsilon
  inputBinding:
    prefix: --epsilon
  type: string
- doc: '|AUTO          No. cores/threads or AUTO-detect (default: 1)'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: 'Max number of threads for -T AUTO (default: all cores)'
  id: threads_max
  inputBinding:
    prefix: --threads-max
  type: string
- doc: '|DIR          NEXUS/RAxML partition file or directory with alignments Edge-linked
    proportional partition model'
  id: p
  inputBinding:
    prefix: -p
  type: File
- doc: '|DIR          Like -p but edge-linked equal partition model '
  id: q
  inputBinding:
    prefix: -q
  type: File
- doc: '|DIR          Like -p but edge-unlinked partition model'
  id: q
  inputBinding:
    prefix: -Q
  type: File
- doc: '|DIR          Like -p but separate tree inference'
  id: s
  inputBinding:
    prefix: -S
  type: File
- doc: Randomly sub-sample partitions (negative for complement)
  id: subsample
  inputBinding:
    prefix: --subsample
  type: string
- doc: Random number seed for --subsample
  id: subsample_seed
  inputBinding:
    prefix: --subsample-seed
  type: string
- doc: Number of quartets for likelihood mapping analysis
  id: l_map
  inputBinding:
    prefix: --lmap
  type: string
- doc: NEXUS file containing clusters for likelihood mapping
  id: lmc_lust
  inputBinding:
    prefix: --lmclust
  type: File
- doc: Print quartet log-likelihoods to .quartetlh file
  id: quartet_lh
  inputBinding:
    prefix: --quartetlh
  type: boolean
- doc: 'Number of initial parsimony trees (default: 100)'
  id: nin_it
  inputBinding:
    prefix: --ninit
  type: string
- doc: 'Number of top initial trees (default: 20)'
  id: ntop
  inputBinding:
    prefix: --ntop
  type: string
- doc: 'Number of best trees retained during search (defaut: 5)'
  id: n_best
  inputBinding:
    prefix: --nbest
  type: string
- doc: 'Fix number of iterations to stop (default: OFF)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'Number of unsuccessful iterations to stop (default: 100)'
  id: n_stop
  inputBinding:
    prefix: --nstop
  type: string
- doc: 'Perturbation strength for randomized NNI (default: 0.5)'
  id: perturb
  inputBinding:
    prefix: --perturb
  type: string
- doc: 'Radius for parsimony SPR search (default: 6)'
  id: radius
  inputBinding:
    prefix: --radius
  type: string
- doc: 'Perform more thorough NNI search (default: OFF)'
  id: all_nni
  inputBinding:
    prefix: --allnni
  type: boolean
- doc: (Multifurcating) topological constraint tree file
  id: g
  inputBinding:
    prefix: -g
  type: File
- doc: Fast search to resemble FastTree
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: Collapse near-zero branches into polytomy
  id: poly_to_my
  inputBinding:
    prefix: --polytomy
  type: boolean
- doc: Fix -t tree (no tree search performed)
  id: tree_fix
  inputBinding:
    prefix: --tree-fix
  type: boolean
- doc: Write locally optimal trees into .treels file
  id: t_reels
  inputBinding:
    prefix: --treels
  type: boolean
- doc: Compute tree likelihood without optimisation
  id: show_lh
  inputBinding:
    prefix: --show-lh
  type: boolean
- doc: Check if the tree lies on a phylogenetic terrace
  id: terrace
  inputBinding:
    prefix: --terrace
  type: boolean
- doc: Replicates for ultrafast bootstrap (>=1000)
  id: uf_boot
  inputBinding:
    prefix: --ufboot
  type: string
- doc: Replicates for ultrafast jackknife (>=1000)
  id: uf_jack
  inputBinding:
    prefix: --ufjack
  type: string
- doc: 'Subsampling proportion for jackknife (default: 0.5)'
  id: jack_prop
  inputBinding:
    prefix: --jack-prop
  type: string
- doc: 'GENE|GENESITE resampling for partitions (default: SITE)'
  id: sampling
  inputBinding:
    prefix: --sampling
  type: string
- doc: 'Write bootstrap trees to .ufboot file (default: none)'
  id: boot_trees
  inputBinding:
    prefix: --boot-trees
  type: boolean
- doc: Like --boot-trees but also writing branch lengths
  id: wbt_l
  inputBinding:
    prefix: --wbtl
  type: boolean
- doc: 'Maximum number of iterations (default: 1000)'
  id: nmax
  inputBinding:
    prefix: --nmax
  type: string
- doc: 'Iterations for UFBoot stopping rule (default: 100)'
  id: nstep
  inputBinding:
    prefix: --nstep
  type: string
- doc: 'Minimum correlation coefficient (default: 0.99)'
  id: bc_or
  inputBinding:
    prefix: --bcor
  type: string
- doc: 'RELL epsilon to break tie (default: 0.5)'
  id: be_ps
  inputBinding:
    prefix: --beps
  type: string
- doc: Optimize UFBoot trees by NNI on bootstrap alignment
  id: bnn_i
  inputBinding:
    prefix: --bnni
  type: boolean
- doc: Replicates for bootstrap + ML tree + consensus tree
  id: boot
  inputBinding:
    prefix: --boot
  type: string
- doc: Replicates for jackknife + ML tree + consensus tree
  id: jack
  inputBinding:
    prefix: --jack
  type: string
- doc: 'Subsampling proportion for jackknife (default: 0.5)'
  id: jack_prop
  inputBinding:
    prefix: --jack-prop
  type: string
- doc: Replicates for bootstrap + consensus tree
  id: bc_on
  inputBinding:
    prefix: --bcon
  type: string
- doc: Replicates for bootstrap only
  id: b_only
  inputBinding:
    prefix: --bonly
  type: string
- doc: Transfer bootstrap expectation
  id: t_be
  inputBinding:
    prefix: --tbe
  type: boolean
- doc: Replicates for SH approximate likelihood ratio test
  id: alrt
  inputBinding:
    prefix: --alrt
  type: string
- doc: 0             Parametric aLRT test (Anisimova and Gascuel 2006)
  id: alrt
  inputBinding:
    prefix: --alrt
  type: boolean
- doc: approximate Bayes test (Anisimova et al. 2011)
  id: a_bayes
  inputBinding:
    prefix: --abayes
  type: boolean
- doc: Replicates for fast local bootstrap probabilities
  id: lbp
  inputBinding:
    prefix: --lbp
  type: string
- doc: Standard model selection (like jModelTest, ProtTest)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Standard model selection followed by tree inference
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Extended model selection with FreeRate heterogeneity
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Extended model selection followed by tree inference
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: '...+LM            Additionally test Lie Markov models'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+LMRY          Additionally test Lie Markov models with RY symmetry'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+LMWS          Additionally test Lie Markov models with WS symmetry'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+LMMK          Additionally test Lie Markov models with MK symmetry'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+LMSS          Additionally test strand-symmetric models'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Restrict search to models supported by other programs (raxml, phyml or mrbayes)
  id: m_set
  inputBinding:
    prefix: --mset
  type: string
- doc: ',...       Comma-separated model list (e.g. -mset WAG,LG,JTT)'
  id: m_set
  inputBinding:
    prefix: --mset
  type: string
- doc: Amino-acid model source (nuclear, mitochondrial, chloroplast or viral)
  id: msub
  inputBinding:
    prefix: --msub
  type: string
- doc: ',...      List of state frequencies'
  id: m_freq
  inputBinding:
    prefix: --mfreq
  type: string
- doc: ',...      List of rate heterogeneity among sites (e.g. -mrate E,I,G,I+G,R
    is used for -m MF)'
  id: m_rate
  inputBinding:
    prefix: --mrate
  type: string
- doc: 'Min categories for FreeRate model [+R] (default: 2)'
  id: cm_in
  inputBinding:
    prefix: --cmin
  type: string
- doc: 'Max categories for FreeRate model [+R] (default: 10)'
  id: cmax
  inputBinding:
    prefix: --cmax
  type: string
- doc: '|AICc|BIC  Akaike|Bayesian information criterion (default: BIC)'
  id: merit
  inputBinding:
    prefix: --merit
  type: string
- doc: Perform full tree search for every model
  id: mtree
  inputBinding:
    prefix: --mtree
  type: boolean
- doc: 'Ignore .model.gz checkpoint file (default: OFF)'
  id: m_redo
  inputBinding:
    prefix: --mredo
  type: boolean
- doc: ',...       List of mixture models to consider'
  id: madd
  inputBinding:
    prefix: --madd
  type: string
- doc: Model definition NEXUS file (see Manual)
  id: m_def
  inputBinding:
    prefix: --mdef
  type: File
- doc: Find best codon/protein/DNA models (Whelan et al. 2015)
  id: modelo_matic
  inputBinding:
    prefix: --modelomatic
  type: boolean
- doc: Merge partitions to increase model fit
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: '|rcluster|rclusterf Set merging algorithm (default: rclusterf)'
  id: merge
  inputBinding:
    prefix: --merge
  type: string
- doc: '1|all  Use only 1 or all models for merging (default: 1)'
  id: merge_model
  inputBinding:
    prefix: --merge-model
  type: boolean
- doc: ',... Comma-separated model list for merging'
  id: merge_model
  inputBinding:
    prefix: --merge-model
  type: string
- doc: '1|all   Use only 1 or all rate heterogeneity (default: 1)'
  id: merge_rate
  inputBinding:
    prefix: --merge-rate
  type: boolean
- doc: ',... Comma-separated rate list for merging'
  id: merge_rate
  inputBinding:
    prefix: --merge-rate
  type: string
- doc: Percentage of partition pairs for rcluster algorithm
  id: r_cluster
  inputBinding:
    prefix: --rcluster
  type: string
- doc: Percentage of partition pairs for rclusterf algorithm
  id: r_cluster_f
  inputBinding:
    prefix: --rclusterf
  type: string
- doc: 'Max number of partition pairs (default: 10*partitions)'
  id: r_cluster_max
  inputBinding:
    prefix: --rcluster-max
  type: string
- doc: '...+F             Empirically counted frequencies from alignment'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FO            Optimized frequencies by maximum-likelihood'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FQ            Equal frequencies'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FRY           For DNA, freq(A+G)=1/2=freq(C+T)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FWS           For DNA, freq(A+T)=1/2=freq(C+G)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FMK           For DNA, freq(A+C)=1/2=freq(G+T)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+Fabcd         4-digit constraint on ACGT frequency (e.g. +F1221 means
    f_A=f_T, f_C=f_G)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+FU            Amino-acid frequencies given protein matrix'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+F1x4          Equal NT frequencies over three codon positions'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+F3x4          Unequal NT frequencies over three codon positions'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+I             A proportion of invariable sites'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+G[n]          Discrete Gamma model with n categories (default n=4)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...*G[n]          Discrete Gamma model with unlinked model parameters'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+I+G[n]        Invariable sites plus Gamma model with n categories'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+R[n]          FreeRate model with n categories (default n=4)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...*R[n]          FreeRate model with unlinked model parameters'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+I+R[n]        Invariable sites plus FreeRate model with n categories'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+Hn            Heterotachy model with n classes'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...*Hn            Heterotachy model with n classes and unlinked parameters'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'Min Gamma shape parameter for site rates (default: 0.02)'
  id: alpha_min
  inputBinding:
    prefix: --alpha-min
  type: string
- doc: 'Median approximation for +G site rates (default: mean)'
  id: gamma_median
  inputBinding:
    prefix: --gamma-median
  type: boolean
- doc: Write empirical Bayesian site rates to .rate file
  id: rate
  inputBinding:
    prefix: --rate
  type: boolean
- doc: Write maximum likelihood site rates to .mlrate file
  id: ml_rate
  inputBinding:
    prefix: --mlrate
  type: boolean
- doc: Input counts file (see manual)
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: '...+P             DNA substitution model (see above) used with PoMo'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+N<POPSIZE>    Virtual population size (default: 9)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+WB|WH|S]      Weighted binomial sampling'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+WH            Weighted hypergeometric sampling'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+S             Sampled sampling'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '...+G[n]          Discrete Gamma rate with n categories (default n=4)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '"MIX{m1,...,mK}"  Mixture model with K components'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '"FMIX{f1,...fK}"  Frequency mixture model with K components'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'Optimize mixture weights (default: detect)'
  id: mix_opt
  inputBinding:
    prefix: --mix-opt
  type: boolean
- doc: '...+ASC           Ascertainment bias correction'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Input tree to infer site frequency model
  id: tree_freq
  inputBinding:
    prefix: --tree-freq
  type: File
- doc: Input site frequency model file
  id: site_freq
  inputBinding:
    prefix: --site-freq
  type: File
- doc: Posterior maximum instead of mean approximation
  id: freq_max
  inputBinding:
    prefix: --freq-max
  type: boolean
- doc: Set of trees to evaluate log-likelihoods
  id: trees
  inputBinding:
    prefix: --trees
  type: File
- doc: Replicates for topology test
  id: test
  inputBinding:
    prefix: --test
  type: string
- doc: Perform weighted KH and SH tests
  id: test_weight
  inputBinding:
    prefix: --test-weight
  type: boolean
- doc: Approximately unbiased (AU) test (Shimodaira 2002)
  id: test_au
  inputBinding:
    prefix: --test-au
  type: boolean
- doc: Write site log-likelihoods to .sitelh file
  id: site_lh
  inputBinding:
    prefix: --sitelh
  type: boolean
- doc: Ancestral state reconstruction by empirical Bayes
  id: ancestral
  inputBinding:
    prefix: --ancestral
  type: boolean
- doc: 'Min probability of ancestral state (default: equil freq)'
  id: asr_min
  inputBinding:
    prefix: --asr-min
  type: string
- doc: Perform three tests of symmetry
  id: sym_test
  inputBinding:
    prefix: --symtest
  type: boolean
- doc: Do --symtest then exist
  id: sym_test_only
  inputBinding:
    prefix: --symtest-only
  type: boolean
- doc: Do --symtest and remove bad partitions
  id: sym_test_remove_bad
  inputBinding:
    prefix: --symtest-remove-bad
  type: boolean
- doc: Do --symtest and remove good partitions
  id: sym_test_remove_good
  inputBinding:
    prefix: --symtest-remove-good
  type: boolean
- doc: '|INT  Use MARginal/INTernal test when removing partitions'
  id: sym_test_type
  inputBinding:
    prefix: --symtest-type
  type: string
- doc: 'P-value cutoff (default: 0.05)'
  id: sym_test_pval
  inputBinding:
    prefix: --symtest-pval
  type: string
- doc: Keep NAs in the tests
  id: sym_test_keep_zero
  inputBinding:
    prefix: --symtest-keep-zero
  type: boolean
- doc: Reference tree to assign concordance factor
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Set of source trees for gene concordance factor (gCF)
  id: gcf
  inputBinding:
    prefix: --gcf
  type: File
- doc: Write discordant trees associated with gDF1
  id: df_tree
  inputBinding:
    prefix: --df-tree
  type: boolean
- doc: Number of quartets for site concordance factor (sCF)
  id: scf
  inputBinding:
    prefix: --scf
  type: string
- doc: Sequence alignment for --scf
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: '|DIR          Partition file or directory for --scf'
  id: p
  inputBinding:
    prefix: -p
  type: File
- doc: Write CF per tree/locus to cf.stat_tree/_loci
  id: cf_verbose
  inputBinding:
    prefix: --cf-verbose
  type: boolean
- doc: Set of input trees for consensus reconstruction
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: 'Min split support, 0.5 for majority-rule consensus (default: 0, extended consensus)'
  id: sup_min
  inputBinding:
    prefix: --sup-min
  type: string
- doc: Burnin number of trees to ignore
  id: burnin
  inputBinding:
    prefix: --burnin
  type: string
- doc: Compute consensus tree to .contree file
  id: con_tree
  inputBinding:
    prefix: --con-tree
  type: boolean
- doc: Computing consensus network to .nex file
  id: con_net
  inputBinding:
    prefix: --con-net
  type: boolean
- doc: Assign support values into this tree from -t trees
  id: support
  inputBinding:
    prefix: --support
  type: File
- doc: Node name (or ALL) to assign tree IDs where node occurs
  id: sup_tag
  inputBinding:
    prefix: --suptag
  type: string
- doc: Compute all-to-all RF distances for -t trees
  id: tree_dist_all
  inputBinding:
    prefix: --tree-dist-all
  type: boolean
- doc: Compute RF distances between -t trees and this set
  id: tree_dist
  inputBinding:
    prefix: --tree-dist
  type: File
- doc: Like -rf but trees can have unequal taxon sets
  id: tree_dist2
  inputBinding:
    prefix: --tree-dist2
  type: File
- doc: No. taxa for Yule-Harding random tree
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: '|CAT|BAL   UNIform | CATerpillar | BALanced random tree'
  id: rand
  inputBinding:
    prefix: --rand
  type: string
- doc: NUM NUM   min, mean, and max random branch lengths
  id: rlen
  inputBinding:
    prefix: --rlen
  type: string
- doc: 'Keep identical sequences (default: remove & finally add)'
  id: keep_ident
  inputBinding:
    prefix: --keep-ident
  type: boolean
- doc: 'Checkpoint time interval in seconds (default: 60)'
  id: cp_time
  inputBinding:
    prefix: --cptime
  type: string
- doc: Fix branch lengths of user tree passed via -te
  id: bl_fix
  inputBinding:
    prefix: -blfix
  type: boolean
- doc: Scale branch lengths of user tree passed via -t
  id: bl_scale
  inputBinding:
    prefix: -blscale
  type: boolean
- doc: Min branch length for optimization (default 0.000001)
  id: blm_in
  inputBinding:
    prefix: -blmin
  type: boolean
- doc: Max branch length for optimization (default 100)
  id: bl_max
  inputBinding:
    prefix: -blmax
  type: boolean
- doc: Write site log-likelihoods per rate category
  id: w_slr
  inputBinding:
    prefix: -wslr
  type: boolean
- doc: Write site log-likelihoods per mixture class
  id: w_slm
  inputBinding:
    prefix: -wslm
  type: boolean
- doc: Write site log-likelihoods per mixture+rate class
  id: wsl_mr
  inputBinding:
    prefix: -wslmr
  type: boolean
- doc: Write site probabilities per rate category
  id: w_spr
  inputBinding:
    prefix: -wspr
  type: boolean
- doc: Write site probabilities per mixture class
  id: ws_pm
  inputBinding:
    prefix: -wspm
  type: boolean
- doc: Write site probabilities per mixture+rate class
  id: wsp_mr
  inputBinding:
    prefix: -wspmr
  type: boolean
- doc: Write partition log-likelihoods to .partlh file
  id: part_lh
  inputBinding:
    prefix: --partlh
  type: boolean
- doc: Suppress printing output files
  id: no_out_files
  inputBinding:
    prefix: --no-outfiles
  type: boolean
- doc: Use Eigen3 library
  id: eigen_lib
  inputBinding:
    prefix: --eigenlib
  type: boolean
- doc: Print alignment sites statistics to .alninfo
  id: aln_info
  inputBinding:
    prefix: -alninfo
  type: boolean
