class: CommandLineTool
id: raxml_ng.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: evaluate
  doc: evaluate the likelihood of a tree (with model+brlen optimization)
  type: boolean
  inputBinding:
    prefix: --evaluate
- id: search
  doc: 'ML tree search (default: 10 parsimony + 10 random starting trees)'
  type: boolean
  inputBinding:
    prefix: --search
- id: bootstrap
  doc: 'bootstrapping (default: use bootstopping to auto-detect #replicates)'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: all
  doc: all-in-one (ML search + bootstrapping)
  type: boolean
  inputBinding:
    prefix: --all
- id: support
  doc: compute bipartition support for a given reference tree (e.g., best ML tree)
    and a set of replicate trees (e.g., from a bootstrap analysis)
  type: boolean
  inputBinding:
    prefix: --support
- id: bs_converge
  doc: test for bootstrapping convergence using autoMRE criterion
  type: boolean
  inputBinding:
    prefix: --bsconverge
- id: bsms_a
  doc: generate bootstrap replicate MSAs
  type: boolean
  inputBinding:
    prefix: --bsmsa
- id: terrace
  doc: 'check whether a tree lies on a phylogenetic terrace '
  type: boolean
  inputBinding:
    prefix: --terrace
- id: check
  doc: check alignment correctness and remove empty columns/rows
  type: boolean
  inputBinding:
    prefix: --check
- id: parse
  doc: parse alignment, compress patterns and create binary MSA file
  type: boolean
  inputBinding:
    prefix: --parse
- id: start
  doc: generate parsimony/random starting trees and exit
  type: boolean
  inputBinding:
    prefix: --start
- id: rf_dist
  doc: compute pair-wise Robinson-Foulds (RF) distances between trees
  type: boolean
  inputBinding:
    prefix: --rfdist
- id: con_sense
  doc: '[ STRICT | MR | MR<n> | MRE ]   build strict, majority-rule (MR) or extended
    MR (MRE) consensus tree (default: MR) eg: --consense MR75 --tree bsrep.nw'
  type: boolean
  inputBinding:
    prefix: --consense
- id: ancestral
  doc: ancestral state reconstruction at all inner nodes
  type: boolean
  inputBinding:
    prefix: --ancestral
- id: search_1
  doc: 'Alias for: --search --tree rand{1}'
  type: boolean
  inputBinding:
    prefix: --search1
- id: log_lh
  doc: 'Alias for: --evaluate --opt-model off --opt-branches off --nofiles --log result'
  type: boolean
  inputBinding:
    prefix: --loglh
- id: rf
  doc: 'Alias for: --rfdist --nofiles --log result'
  type: boolean
  inputBinding:
    prefix: --rf
- id: tree
  doc: 'rand{N} | pars{N} | FILE starting tree: rand(om), pars(imony) or user-specified
    (newick file) N = number of trees (default: rand{10},pars{10})'
  type: boolean
  inputBinding:
    prefix: --tree
- id: msa
  doc: FILE                     alignment file
  type: boolean
  inputBinding:
    prefix: --msa
- id: msa_format
  doc: 'VALUE                    alignment file format: FASTA, PHYLIP, CATG or AUTO-detect
    (default)'
  type: boolean
  inputBinding:
    prefix: --msa-format
- id: data_type
  doc: 'VALUE                    data type: DNA, AA, BIN(ary) or AUTO-detect (default)'
  type: boolean
  inputBinding:
    prefix: --data-type
- id: tree_constraint
  doc: constraint tree
  type: File
  inputBinding:
    prefix: --tree-constraint
- id: prefix
  doc: 'STRING                   prefix for output files (default: MSA file name)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: log
  doc: 'VALUE                    log verbosity: ERROR,WARNING,RESULT,INFO,PROGRESS,DEBUG
    (default: PROGRESS)'
  type: boolean
  inputBinding:
    prefix: --log
- id: redo
  doc: 'overwrite existing result files and ignore checkpoints (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --redo
- id: no_files
  doc: do not create any output files, print results to the terminal only
  type: boolean
  inputBinding:
    prefix: --nofiles
- id: precision
  doc: 'VALUE                    number of decimal places to print (default: 6)'
  type: boolean
  inputBinding:
    prefix: --precision
- id: out_group
  doc: o1,o2,..,oN              comma-separated list of outgroup taxon names (it's
    just a drawing option!)
  type: boolean
  inputBinding:
    prefix: --outgroup
- id: seed
  doc: 'VALUE                       seed for pseudo-random number generator (default:
    current time)'
  type: boolean
  inputBinding:
    prefix: --seed
- id: pat_comp
  doc: 'on | off                    alignment pattern compression (default: ON)'
  type: boolean
  inputBinding:
    prefix: --pat-comp
- id: tip_inner
  doc: 'on | off                    tip-inner case optimization (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --tip-inner
- id: site_repeats
  doc: '| off                    use site repeats optimization, 10%-60% faster than
    tip-inner (default: ON)'
  type: string
  inputBinding:
    prefix: --site-repeats
- id: threads
  doc: 'VALUE                       number of parallel threads to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: simd
  doc: 'none | sse3 | avx | avx2    vector instruction set to use (default: auto-detect).'
  type: boolean
  inputBinding:
    prefix: --simd
- id: rate_scalers
  doc: '| off                    use individual CLV scalers for each rate category
    (default: ON for >2000 taxa)'
  type: string
  inputBinding:
    prefix: --rate-scalers
- id: force
  doc: '[ <CHECKS> ]                disable safety checks (please think twice!)'
  type: boolean
  inputBinding:
    prefix: --force
- id: model
  doc: <name>+G[n]+<Freqs> | FILE  model specification OR partition file
  type: boolean
  inputBinding:
    prefix: --model
- id: br_len
  doc: 'linked | scaled | unlinked  branch length linkage between partitions (default:
    scaled)'
  type: boolean
  inputBinding:
    prefix: --brlen
- id: blm_in
  doc: 'VALUE                       minimum branch length (default: 1e-6)'
  type: boolean
  inputBinding:
    prefix: --blmin
- id: bl_max
  doc: 'VALUE                       maximum branch length (default: 100)'
  type: boolean
  inputBinding:
    prefix: --blmax
- id: bl_opt
  doc: 'nr_fast    | nr_safe        branch length optimization method (default: nr_fast)
    nr_oldfast | nr_oldsafe     '
  type: boolean
  inputBinding:
    prefix: --blopt
- id: opt_model
  doc: 'on | off                    ML optimization of all model parameters (default:
    ON)'
  type: boolean
  inputBinding:
    prefix: --opt-model
- id: opt_branches
  doc: '| off                    ML optimization of all branch lengths (default: ON)'
  type: string
  inputBinding:
    prefix: --opt-branches
- id: prob_msa
  doc: on | off                    use probabilistic alignment (works with CATG and
    VCF)
  type: boolean
  inputBinding:
    prefix: --prob-msa
- id: lh_epsilon
  doc: 'VALUE                       log-likelihood epsilon for optimization/tree search
    (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: --lh-epsilon
- id: spr_radius
  doc: 'VALUE                       SPR re-insertion radius for fast iterations (default:
    AUTO)'
  type: boolean
  inputBinding:
    prefix: --spr-radius
- id: spr_cut_off
  doc: 'VALUE | off                 relative LH cutoff for descending into subtrees
    (default: 1.0)'
  type: boolean
  inputBinding:
    prefix: --spr-cutoff
- id: bs_trees
  doc: VALUE                       number of bootstraps replicates
  type: boolean
  inputBinding:
    prefix: --bs-trees
- id: bs_trees
  doc: 'autoMRE{N}                  use MRE-based bootstrap convergence criterion,
    up to N replicates (default: 1000)'
  type: boolean
  inputBinding:
    prefix: --bs-trees
- id: bs_trees
  doc: FILE                        Newick file containing set of bootstrap replicate
    trees (with --support)
  type: boolean
  inputBinding:
    prefix: --bs-trees
- id: bs_cut_off
  doc: 'VALUE                       cutoff threshold for the MRE-based bootstopping
    criteria (default: 0.03)'
  type: boolean
  inputBinding:
    prefix: --bs-cutoff
- id: bs_metric
  doc: 'fbp | tbe                   branch support metric: fbp = Felsenstein bootstrap
    (default), tbe = transfer distance'
  type: boolean
  inputBinding:
    prefix: --bs-metric
outputs: []
cwlVersion: v1.1
baseCommand:
- raxml-ng
