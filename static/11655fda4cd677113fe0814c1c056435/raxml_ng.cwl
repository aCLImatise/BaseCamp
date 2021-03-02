class: CommandLineTool
id: raxml_ng.cwl
inputs:
- id: in_evaluate
  doc: evaluate the likelihood of a tree (with model+brlen optimization)
  type: boolean?
  inputBinding:
    prefix: --evaluate
- id: in_search
  doc: 'ML tree search (default: 10 parsimony + 10 random starting trees)'
  type: boolean?
  inputBinding:
    prefix: --search
- id: in_bootstrap
  doc: 'bootstrapping (default: use bootstopping to auto-detect #replicates)'
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_all
  doc: all-in-one (ML search + bootstrapping)
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_support
  doc: "compute bipartition support for a given reference tree (e.g., best ML tree)\n\
    and a set of replicate trees (e.g., from a bootstrap analysis)"
  type: boolean?
  inputBinding:
    prefix: --support
- id: in_bs_converge
  doc: test for bootstrapping convergence using autoMRE criterion
  type: boolean?
  inputBinding:
    prefix: --bsconverge
- id: in_bsms_a
  doc: generate bootstrap replicate MSAs
  type: boolean?
  inputBinding:
    prefix: --bsmsa
- id: in_terrace
  doc: check whether a tree lies on a phylogenetic terrace
  type: boolean?
  inputBinding:
    prefix: --terrace
- id: in_check
  doc: check alignment correctness and remove empty columns/rows
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_parse
  doc: parse alignment, compress patterns and create binary MSA file
  type: boolean?
  inputBinding:
    prefix: --parse
- id: in_start
  doc: generate parsimony/random starting trees and exit
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_rf_dist
  doc: compute pair-wise Robinson-Foulds (RF) distances between trees
  type: boolean?
  inputBinding:
    prefix: --rfdist
- id: in_con_sense
  doc: "[ STRICT | MR | MR<n> | MRE ]   build strict, majority-rule (MR) or extended\
    \ MR (MRE) consensus tree (default: MR)\neg: --consense MR75 --tree bsrep.nw"
  type: boolean?
  inputBinding:
    prefix: --consense
- id: in_ancestral
  doc: ancestral state reconstruction at all inner nodes
  type: boolean?
  inputBinding:
    prefix: --ancestral
- id: in_search_one
  doc: 'Alias for: --search --tree rand{1}'
  type: boolean?
  inputBinding:
    prefix: --search1
- id: in_log_lh
  doc: 'Alias for: --evaluate --opt-model off --opt-branches off --nofiles --log result'
  type: boolean?
  inputBinding:
    prefix: --loglh
- id: in_rf
  doc: 'Alias for: --rfdist --nofiles --log result'
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_tree
  doc: "rand{N} | pars{N} | FILE starting tree: rand(om), pars(imony) or user-specified\
    \ (newick file)\nN = number of trees (default: rand{10},pars{10})"
  type: boolean?
  inputBinding:
    prefix: --tree
- id: in_msa
  doc: FILE                     alignment file
  type: boolean?
  inputBinding:
    prefix: --msa
- id: in_msa_format
  doc: 'VALUE                    alignment file format: FASTA, PHYLIP, CATG or AUTO-detect
    (default)'
  type: boolean?
  inputBinding:
    prefix: --msa-format
- id: in_data_type
  doc: 'VALUE                    data type: DNA, AA, BIN(ary) or AUTO-detect (default)'
  type: boolean?
  inputBinding:
    prefix: --data-type
- id: in_tree_constraint
  doc: constraint tree
  type: File?
  inputBinding:
    prefix: --tree-constraint
- id: in_prefix
  doc: 'STRING                   prefix for output files (default: MSA file name)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_log
  doc: 'VALUE                    log verbosity: ERROR,WARNING,RESULT,INFO,PROGRESS,DEBUG
    (default: PROGRESS)'
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_redo
  doc: 'overwrite existing result files and ignore checkpoints (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --redo
- id: in_no_files
  doc: do not create any output files, print results to the terminal only
  type: boolean?
  inputBinding:
    prefix: --nofiles
- id: in_precision
  doc: 'VALUE                    number of decimal places to print (default: 6)'
  type: boolean?
  inputBinding:
    prefix: --precision
- id: in_out_group
  doc: o1,o2,..,oN              comma-separated list of outgroup taxon names (it's
    just a drawing option!)
  type: boolean?
  inputBinding:
    prefix: --outgroup
- id: in_seed
  doc: 'VALUE                       seed for pseudo-random number generator (default:
    current time)'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_pat_comp
  doc: 'on | off                    alignment pattern compression (default: ON)'
  type: boolean?
  inputBinding:
    prefix: --pat-comp
- id: in_tip_inner
  doc: 'on | off                    tip-inner case optimization (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --tip-inner
- id: in_site_repeats
  doc: '| off                    use site repeats optimization, 10%-60% faster than
    tip-inner (default: ON)'
  type: long?
  inputBinding:
    prefix: --site-repeats
- id: in_threads
  doc: 'VALUE                       number of parallel threads to use (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_simd
  doc: 'none | sse3 | avx | avx2    vector instruction set to use (default: auto-detect).'
  type: boolean?
  inputBinding:
    prefix: --simd
- id: in_rate_scalers
  doc: '| off                    use individual CLV scalers for each rate category
    (default: ON for >2000 taxa)'
  type: long?
  inputBinding:
    prefix: --rate-scalers
- id: in_force
  doc: '[ <CHECKS> ]                disable safety checks (please think twice!)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_model
  doc: <name>+G[n]+<Freqs> | FILE  model specification OR partition file
  type: boolean?
  inputBinding:
    prefix: --model
- id: in_br_len
  doc: 'linked | scaled | unlinked  branch length linkage between partitions (default:
    scaled)'
  type: boolean?
  inputBinding:
    prefix: --brlen
- id: in_blm_in
  doc: 'VALUE                       minimum branch length (default: 1e-6)'
  type: boolean?
  inputBinding:
    prefix: --blmin
- id: in_bl_max
  doc: 'VALUE                       maximum branch length (default: 100)'
  type: boolean?
  inputBinding:
    prefix: --blmax
- id: in_bl_opt
  doc: "nr_fast    | nr_safe        branch length optimization method (default: nr_fast)\n\
    nr_oldfast | nr_oldsafe"
  type: boolean?
  inputBinding:
    prefix: --blopt
- id: in_opt_model
  doc: 'on | off                    ML optimization of all model parameters (default:
    ON)'
  type: boolean?
  inputBinding:
    prefix: --opt-model
- id: in_opt_branches
  doc: '| off                    ML optimization of all branch lengths (default: ON)'
  type: string?
  inputBinding:
    prefix: --opt-branches
- id: in_prob_msa
  doc: on | off                    use probabilistic alignment (works with CATG and
    VCF)
  type: boolean?
  inputBinding:
    prefix: --prob-msa
- id: in_lh_epsilon
  doc: 'VALUE                       log-likelihood epsilon for optimization/tree search
    (default: 0.1)'
  type: boolean?
  inputBinding:
    prefix: --lh-epsilon
- id: in_spr_radius
  doc: 'VALUE                       SPR re-insertion radius for fast iterations (default:
    AUTO)'
  type: boolean?
  inputBinding:
    prefix: --spr-radius
- id: in_spr_cut_off
  doc: 'VALUE | off                 relative LH cutoff for descending into subtrees
    (default: 1.0)'
  type: boolean?
  inputBinding:
    prefix: --spr-cutoff
- id: in_bs_cut_off
  doc: 'VALUE                       cutoff threshold for the MRE-based bootstopping
    criteria (default: 0.03)'
  type: boolean?
  inputBinding:
    prefix: --bs-cutoff
- id: in_bs_metric
  doc: 'fbp | tbe                   branch support metric: fbp = Felsenstein bootstrap
    (default), tbe = transfer distance'
  type: boolean?
  inputBinding:
    prefix: --bs-metric
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'STRING                   prefix for output files (default: MSA file name)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- raxml-ng
