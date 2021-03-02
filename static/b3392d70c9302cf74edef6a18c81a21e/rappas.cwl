class: CommandLineTool
id: rappas.cwl
inputs:
- id: in_xms
  doc: -> memory allocated at startup. (m=MegaByte, g=GigaByte)
  type: boolean?
  inputBinding:
    prefix: -Xms
- id: in_x_mx
  doc: -> maximum memory allocated to the process.
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_arbinary_binary_marginal
  doc: "(--arbinary)   [file] Binary for marginal AR, currently 'phyml' and\n'baseml'\
    \ (from PAML) are supported. (b phase)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_database_database_phase
  doc: (--database)   [file] The database of ancestral kmers. (b|p phase)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__phase_one
  doc: "(--phase)      [b|p] One of 'b' for \"Build\" or 'p' for \"Place\"\nb: Build\
    \ DB of phylo-kmers (done 1 time).\np: Phylogenetic placement itself (done n times)\n\
    requires the DB generated during 'build' phase."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__refalign_reference
  doc: "(--refalign)   [file] Reference alignment in fasta format.\nIt must be the\
    \ multiple alignment from which was\nbuilt the reference tree loaded with -t.\
    \ (b phase)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__states_used
  doc: (--states)     ['nucl'|'amino'] States used in analysis. (b|p phase)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__reftree_tree
  doc: (--reftree)    [file] Reference tree, in newick format.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_queries_fasta_queries
  doc: "(--queries)    [file[,file,...]] Fasta queries to place on the tree.\nCan\
    \ be a list of files separated by ','. (b|p phase)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_verbosity_verbosity_level
  doc: '(--verbosity)  [0] Verbosity level: -1=none ; 0=default ; 1=high'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__workdir_directory
  doc: (--workdir)    [path] Working directory for temp files. (b|p phase)
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_keep_at_most
  doc: "[7] Max number of placement per query kept in\nthe jplace output. (p phase)"
  type: boolean?
  inputBinding:
    prefix: --keep-at-most
- id: in_keep_factor
  doc: "[0.01] Report placement with likelihood_ratio higher\nthan (factor x best_likelihood_ratio).\
    \ (p phase)"
  type: boolean?
  inputBinding:
    prefix: --keep-factor
- id: in_write_reduction
  doc: '[file] Write reduced alignment to file. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --write-reduction
- id: in_guppy_compat
  doc: '[] Ensures output is Guppy compatible. (p phase)'
  type: boolean?
  inputBinding:
    prefix: --guppy-compat
- id: in_db_filename
  doc: '[string] Set DB filename. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --dbfilename
- id: in__alpha_gammma
  doc: (--alpha)      [1.0] Gammma shape parameter used in AR . (b phase)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_categories_categories_used
  doc: '(--categories) [4] # categories used in AR . (b phase)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__ghosts_injected
  doc: '(--ghosts)     [1] # ghost nodes injected per branches. (b phase)'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in__kmer_length
  doc: (--k)          [8] k-mer length used at DB build. (b mode)
  type: boolean?
  inputBinding:
    prefix: -k
- id: in__model_used
  doc: "(--model)      [GTR|LG] Model used in AR, one of the following:\nnucl  : JC69,\
    \ HKY85, K80, F81, TN93, GTR\namino : LG, WAG, JTT, Dayhoff, DCMut, CpREV,\nmMtREV,\
    \ MtMam, MtArt"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_ar_parameters
  doc: "[string] Parameters passed to the software used for\nanc. seq. reconstuct.\
    \ Overrides -a,-c,-m options.\nValue must be quoted by ' or \". Do not set options\n\
    -i,-u,--ancestral (managed by RAPPAS). (b phase)\nPhyML example: \"-m HIVw -c\
    \ 10 -f m -v 0.0 --r_seed 1\""
  type: boolean?
  inputBinding:
    prefix: --arparameters
- id: in_convert_uo
  doc: '[] U,O amino acids are converted to C,L. (b|p phase)'
  type: boolean?
  inputBinding:
    prefix: --convertUO
- id: in_force_root
  doc: "[] Root input tree (if unrooted) by adding a root\nnode on righmost branch\
    \ of the trifurcation.(b phase)"
  type: boolean?
  inputBinding:
    prefix: --force-root
- id: in_gap_jump_thresh
  doc: '[0.3] Gap ratio above which gap jumps are activated.'
  type: boolean?
  inputBinding:
    prefix: --gap-jump-thresh
- id: in_no_reduction
  doc: "[] Do not operate alignment reduction. This will\nkeep all sites of input\
    \ reference alignment and\nmay produce erroneous ancestral k-mers. (b phase)"
  type: boolean?
  inputBinding:
    prefix: --no-reduction
- id: in_ratio_reduction
  doc: "[0.99] Ratio for alignment reduction, e.g. sites\nholding >99% gaps are ignored.\
    \ (b phase)"
  type: boolean?
  inputBinding:
    prefix: --ratio-reduction
- id: in_omega
  doc: "[1.0] Modifier levelling the threshold used during\nphylo-kmer filtering,\
    \ T=(omega/#states)^k .(b phase)"
  type: boolean?
  inputBinding:
    prefix: --omega
- id: in_use_unrooted
  doc: "[] Confirms you accept to use an unrooted reference\ntree (option -t). The\
    \ trifurcation described by the\nnewick file will be considered as root. Be aware\
    \ that\nmeaningless roots may impact accuracy. (b phase)"
  type: boolean?
  inputBinding:
    prefix: --use_unrooted
- id: in_amb_with_max
  doc: '[] Treat ambiguities with max, not mean. (p phase)'
  type: boolean?
  inputBinding:
    prefix: --ambwithmax
- id: in_ar_dir
  doc: "[dir] Skip ancestral sequence reconstruction, and\nuses outputs from the specified\
    \ directory. (b phase)"
  type: boolean?
  inputBinding:
    prefix: --ardir
- id: in_ar_input_only
  doc: '[] Generate only AR inputs. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --arinputonly
- id: in_ar_only
  doc: '[] Launch AR, but not DB build. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --aronly
- id: in_db_in_ram
  doc: "[] Build DB, do not save it to a file, but directly\nplace queries given via\
    \ -q instead."
  type: boolean?
  inputBinding:
    prefix: --dbinram
- id: in_do_n_jumps
  doc: '[] Shifts from 1 to n jumps. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --do-n-jumps
- id: in_force_gap_jump
  doc: '[] Forces gap jump even if %gap<thresh. (b phase)'
  type: boolean?
  inputBinding:
    prefix: --force-gap-jump
- id: in_json_db
  doc: '[] DB written as json. (careful, huge file outputs!)'
  type: boolean?
  inputBinding:
    prefix: --jsondb
- id: in_no_amb
  doc: '[] Do not treat ambiguous states. (p phase)'
  type: boolean?
  inputBinding:
    prefix: --noamb
- id: in_threads
  doc: '[4] #threads used in AR (if raxml-ng). (b phase)'
  type: boolean?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rappas:1.21--0
cwlVersion: v1.1
baseCommand:
- rappas
