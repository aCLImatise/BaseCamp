#!/usr/bin/env cwl-runner

baseCommand:
- raxml-ng
class: CommandLineTool
cwlVersion: v1.0
id: raxml-ng
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: evaluate the likelihood of a tree (with model+brlen optimization)
  id: evaluate
  inputBinding:
    prefix: --evaluate
  type: boolean
- doc: 'ML tree search (default: 10 parsimony + 10 random starting trees)'
  id: search
  inputBinding:
    prefix: --search
  type: boolean
- doc: 'bootstrapping (default: use bootstopping to auto-detect #replicates)'
  id: bootstrap
  inputBinding:
    prefix: --bootstrap
  type: boolean
- doc: all-in-one (ML search + bootstrapping)
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: compute bipartition support for a given reference tree (e.g., best ML tree)
    and a set of replicate trees (e.g., from a bootstrap analysis)
  id: support
  inputBinding:
    prefix: --support
  type: boolean
- doc: test for bootstrapping convergence using autoMRE criterion
  id: bs_converge
  inputBinding:
    prefix: --bsconverge
  type: boolean
- doc: generate bootstrap replicate MSAs
  id: bsms_a
  inputBinding:
    prefix: --bsmsa
  type: boolean
- doc: 'check whether a tree lies on a phylogenetic terrace '
  id: terrace
  inputBinding:
    prefix: --terrace
  type: boolean
- doc: check alignment correctness and remove empty columns/rows
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: parse alignment, compress patterns and create binary MSA file
  id: parse
  inputBinding:
    prefix: --parse
  type: boolean
- doc: generate parsimony/random starting trees and exit
  id: start
  inputBinding:
    prefix: --start
  type: boolean
- doc: compute pair-wise Robinson-Foulds (RF) distances between trees
  id: rf_dist
  inputBinding:
    prefix: --rfdist
  type: boolean
- doc: '[ STRICT | MR | MR<n> | MRE ]   build strict, majority-rule (MR) or extended
    MR (MRE) consensus tree (default: MR) eg: --consense MR75 --tree bsrep.nw'
  id: con_sense
  inputBinding:
    prefix: --consense
  type: boolean
- doc: ancestral state reconstruction at all inner nodes
  id: ancestral
  inputBinding:
    prefix: --ancestral
  type: boolean
- doc: 'Alias for: --search --tree rand{1}'
  id: search_1
  inputBinding:
    prefix: --search1
  type: boolean
- doc: 'Alias for: --evaluate --opt-model off --opt-branches off --nofiles --log result'
  id: log_lh
  inputBinding:
    prefix: --loglh
  type: boolean
- doc: 'Alias for: --rfdist --nofiles --log result'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: 'rand{N} | pars{N} | FILE starting tree: rand(om), pars(imony) or user-specified
    (newick file) N = number of trees (default: rand{10},pars{10})'
  id: tree
  inputBinding:
    prefix: --tree
  type: boolean
- doc: FILE                     alignment file
  id: msa
  inputBinding:
    prefix: --msa
  type: boolean
- doc: 'VALUE                    alignment file format: FASTA, PHYLIP, CATG or AUTO-detect
    (default)'
  id: msa_format
  inputBinding:
    prefix: --msa-format
  type: boolean
- doc: 'VALUE                    data type: DNA, AA, BIN(ary) or AUTO-detect (default)'
  id: data_type
  inputBinding:
    prefix: --data-type
  type: boolean
- doc: constraint tree
  id: tree_constraint
  inputBinding:
    prefix: --tree-constraint
  type: File
- doc: 'STRING                   prefix for output files (default: MSA file name)'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: 'VALUE                    log verbosity: ERROR,WARNING,RESULT,INFO,PROGRESS,DEBUG
    (default: PROGRESS)'
  id: log
  inputBinding:
    prefix: --log
  type: boolean
- doc: 'overwrite existing result files and ignore checkpoints (default: OFF)'
  id: redo
  inputBinding:
    prefix: --redo
  type: boolean
- doc: do not create any output files, print results to the terminal only
  id: no_files
  inputBinding:
    prefix: --nofiles
  type: boolean
- doc: 'VALUE                    number of decimal places to print (default: 6)'
  id: precision
  inputBinding:
    prefix: --precision
  type: boolean
- doc: o1,o2,..,oN              comma-separated list of outgroup taxon names (it's
    just a drawing option!)
  id: out_group
  inputBinding:
    prefix: --outgroup
  type: boolean
- doc: 'VALUE                       seed for pseudo-random number generator (default:
    current time)'
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: 'on | off                    alignment pattern compression (default: ON)'
  id: pat_comp
  inputBinding:
    prefix: --pat-comp
  type: boolean
- doc: 'on | off                    tip-inner case optimization (default: OFF)'
  id: tip_inner
  inputBinding:
    prefix: --tip-inner
  type: boolean
- doc: '| off                    use site repeats optimization, 10%-60% faster than
    tip-inner (default: ON)'
  id: site_repeats
  inputBinding:
    prefix: --site-repeats
  type: string
- doc: 'VALUE                       number of parallel threads to use (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: 'none | sse3 | avx | avx2    vector instruction set to use (default: auto-detect).'
  id: simd
  inputBinding:
    prefix: --simd
  type: boolean
- doc: '| off                    use individual CLV scalers for each rate category
    (default: ON for >2000 taxa)'
  id: rate_scalers
  inputBinding:
    prefix: --rate-scalers
  type: string
- doc: '[ <CHECKS> ]                disable safety checks (please think twice!)'
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: <name>+G[n]+<Freqs> | FILE  model specification OR partition file
  id: model
  inputBinding:
    prefix: --model
  type: boolean
- doc: 'linked | scaled | unlinked  branch length linkage between partitions (default:
    scaled)'
  id: br_len
  inputBinding:
    prefix: --brlen
  type: boolean
- doc: 'VALUE                       minimum branch length (default: 1e-6)'
  id: blm_in
  inputBinding:
    prefix: --blmin
  type: boolean
- doc: 'VALUE                       maximum branch length (default: 100)'
  id: bl_max
  inputBinding:
    prefix: --blmax
  type: boolean
- doc: 'nr_fast    | nr_safe        branch length optimization method (default: nr_fast)
    nr_oldfast | nr_oldsafe     '
  id: bl_opt
  inputBinding:
    prefix: --blopt
  type: boolean
- doc: 'on | off                    ML optimization of all model parameters (default:
    ON)'
  id: opt_model
  inputBinding:
    prefix: --opt-model
  type: boolean
- doc: '| off                    ML optimization of all branch lengths (default: ON)'
  id: opt_branches
  inputBinding:
    prefix: --opt-branches
  type: string
- doc: on | off                    use probabilistic alignment (works with CATG and
    VCF)
  id: prob_msa
  inputBinding:
    prefix: --prob-msa
  type: boolean
- doc: 'VALUE                       log-likelihood epsilon for optimization/tree search
    (default: 0.1)'
  id: lh_epsilon
  inputBinding:
    prefix: --lh-epsilon
  type: boolean
- doc: 'VALUE                       SPR re-insertion radius for fast iterations (default:
    AUTO)'
  id: spr_radius
  inputBinding:
    prefix: --spr-radius
  type: boolean
- doc: 'VALUE | off                 relative LH cutoff for descending into subtrees
    (default: 1.0)'
  id: spr_cut_off
  inputBinding:
    prefix: --spr-cutoff
  type: boolean
- doc: VALUE                       number of bootstraps replicates
  id: bs_trees
  inputBinding:
    prefix: --bs-trees
  type: boolean
- doc: 'autoMRE{N}                  use MRE-based bootstrap convergence criterion,
    up to N replicates (default: 1000)'
  id: bs_trees
  inputBinding:
    prefix: --bs-trees
  type: boolean
- doc: FILE                        Newick file containing set of bootstrap replicate
    trees (with --support)
  id: bs_trees
  inputBinding:
    prefix: --bs-trees
  type: boolean
- doc: 'VALUE                       cutoff threshold for the MRE-based bootstopping
    criteria (default: 0.03)'
  id: bs_cut_off
  inputBinding:
    prefix: --bs-cutoff
  type: boolean
- doc: 'fbp | tbe                   branch support metric: fbp = Felsenstein bootstrap
    (default), tbe = transfer distance'
  id: bs_metric
  inputBinding:
    prefix: --bs-metric
  type: boolean
