class: CommandLineTool
id: hmmbuild2.cwl
inputs:
- id: n
  doc: ': name; name this (first) HMM <s>'
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: ': re-save annotated alignment to <f>'
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ': append; append this HMM to <hmmfile>'
  type: boolean
  inputBinding:
    prefix: -A
- id: f
  doc: ': force; allow overwriting of <hmmfile>'
  type: boolean
  inputBinding:
    prefix: -F
- id: f
  doc: ': multi-hit local (hmmfs style)'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: ': global alignment (hmms style, Needleman/Wunsch)'
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: ': local alignment (hmmsw style, Smith/Waterman)'
  type: boolean
  inputBinding:
    prefix: -s
- id: fast
  doc: ': Krogh/Haussler fast heuristic construction (see --gapmax)'
  type: boolean
  inputBinding:
    prefix: --fast
- id: hand
  doc: ': manual construction (requires annotated alignment)'
  type: boolean
  inputBinding:
    prefix: --hand
- id: 'null'
  doc: '<f>   : read null (random sequence) model from <f>'
  type: boolean
  inputBinding:
    prefix: --null
- id: pam
  doc: '<f>   : heuristic PAM-based prior, using BLAST PAM matrix in <f>'
  type: boolean
  inputBinding:
    prefix: --pam
- id: prior
  doc: ': read Dirichlet prior parameters from <f>'
  type: string
  inputBinding:
    prefix: --prior
- id: w_blosum
  doc: ': Henikoff simple filter weights (see --idlevel)'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights (default)'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: w_me
  doc: ': maximum entropy (ME)'
  type: boolean
  inputBinding:
    prefix: --wme
- id: wpb
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: w_voronoi
  doc: ': Sibbald/Argos Voronoi weights'
  type: boolean
  inputBinding:
    prefix: --wvoronoi
- id: w_none
  doc: ": don't do any weighting"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: no_eff
  doc: ": don't use effective sequence number; just use nseq"
  type: boolean
  inputBinding:
    prefix: --noeff
- id: pb_switch
  doc: ': set switch from GSC to position-based wgts at > n seqs'
  type: string
  inputBinding:
    prefix: --pbswitch
- id: amino
  doc: ': override autodetection, assert that seqs are protein'
  type: boolean
  inputBinding:
    prefix: --amino
- id: nucleic
  doc: ': override autodetection, assert that seqs are DNA/RNA'
  type: boolean
  inputBinding:
    prefix: --nucleic
- id: arch_pri
  doc: ': set architecture size prior to <x> {0.85} [0..1]'
  type: string
  inputBinding:
    prefix: --archpri
- id: binary
  doc: ': save the model in binary format, not ASCII text'
  type: boolean
  inputBinding:
    prefix: --binary
- id: c_file
  doc: ': save count vectors to <f>'
  type: string
  inputBinding:
    prefix: --cfile
- id: gap_max
  doc: ': max fraction of gaps in mat column {0.50} [0..1]'
  type: string
  inputBinding:
    prefix: --gapmax
- id: id_level
  doc: ': set frac. id level used by eff. nseq and --wblosum {0.62}'
  type: string
  inputBinding:
    prefix: --idlevel
- id: in_format
  doc: ': input alignment is in format <s>, not Stockholm'
  type: string
  inputBinding:
    prefix: --informat
- id: pam_wgt
  doc: ': set weight on PAM-based prior to <x> {20.}[>=0]'
  type: string
  inputBinding:
    prefix: --pamwgt
- id: sw_entry
  doc: ': set S/W aggregate entry prob. to <x> {0.5}'
  type: string
  inputBinding:
    prefix: --swentry
- id: sw_exit
  doc: ': set S/W aggregate exit prob. to <x>  {0.5}'
  type: string
  inputBinding:
    prefix: --swexit
- id: verbose
  doc: ': print boring information'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmbuild2
