class: CommandLineTool
id: info_gibbs.cwl
inputs:
- id: in_verbosity_set_verbosity
  doc: "#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 low verbosity\n\
    2 high verbosity\n3 maximal verbosity + debug + trace"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__input_read
  doc: "#, --input=#       read sequence from # (must be in FASTA format)\nif not\
    \ specified, the standard input is used"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__width_set
  doc: "#, --width=#       set the motif width to #\nwhen the option dyad is used\
    \ # represents the length monad1 + monad2\nEXAMPLE: --length=7"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_max_spacing
  doc: "=#        set maximal spacing between motif monad to # (only for dyadic motif).\n\
    in this case the parameter -l corresponds to length of monad1 + monad2 (without\
    \ spacing)"
  type: boolean?
  inputBinding:
    prefix: --maxspacing
- id: in_min_spacing
  doc: "=#        set minimal spacing between motif monad to # (only for dyadic motif).\n\
    in this case the parameter -l corresponds to length of monad1 + monad2 (without\
    \ spacing)"
  type: boolean?
  inputBinding:
    prefix: --minspacing
- id: in__strand_search
  doc: "#, --strand=#      search in foward strand + or in both strands +-\nEXAMPLE:\
    \ --strand=+"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__iter_number
  doc: '#, --iter=#        maximum number of Gibbs sampling iterations'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_sites
  doc: "=#             number of motif occurrences that are expected to\nbe found\
    \ (incompatible with -e)"
  type: boolean?
  inputBinding:
    prefix: --sites
- id: in__meansps_mean
  doc: "#, --mean_sps=#    mean number of motif occurrences (sites) expected per sequence\n\
    that are expected to be found (incompatible with --sites)\nDEFAULT: 1"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_z_oops
  doc: try to find 0 or 1 site per sequence
  type: boolean?
  inputBinding:
    prefix: --zoops
- id: in_motifs_number_extract
  doc: '#, --motifs=#      number of motifs to extract (one by default)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_bgfile_use_background
  doc: "#, --bgfile=#      use # predefined INCLUSive background model\n[http://homes.esat.kuleuven.be/~thijs/help/help_motifsampler.html#background]\n\
    EXAMPLE --bgfile=mybgfile"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__dmin_distance
  doc: '#, --dmin=#        set minimal distance between 2 motif occurrences to #'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_set_temperature_be
  doc: "#                  set the temperature (should be in range [0.6 1.4])\nDEFAULT:\
    \ 1.0"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in__nrun_try
  doc: '#  --nrun=#        try to run the Gibbs sampling seach # times'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_collect
  doc: "try to collect the N best sites using their weight scores\n(during the collection\
    \ --dmin and --zoops are not taken into account)"
  type: boolean?
  inputBinding:
    prefix: --collect
- id: in_seed_matrix
  doc: '=#        start sampling form sites collected by scanning the sequences with
    matrix #'
  type: boolean?
  inputBinding:
    prefix: --seedmatrix
- id: in_seed_matrix_sites
  doc: =#  when using seed matrix specify the number of sites for each matrix (n1,n2,n3)
  type: boolean?
  inputBinding:
    prefix: --seedmatrix_sites
- id: in_flanks
  doc: '=#            when using --seedmatrix add extra # positions around the matrix'
  type: boolean?
  inputBinding:
    prefix: --flanks
- id: in_r_seed
  doc: '=#             set random seed to #'
  type: boolean?
  inputBinding:
    prefix: --rseed
- id: in_title
  doc: '=#             add title # to output'
  type: boolean?
  inputBinding:
    prefix: --title
- id: in_info_gibbs
  doc: VERSION
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: AUTHOR
  type: long
  inputBinding:
    position: 1
- id: in_sequences
  doc: motif discovery
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- info-gibbs
