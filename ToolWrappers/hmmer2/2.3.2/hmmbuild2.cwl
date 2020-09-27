class: CommandLineTool
id: hmmbuild2.cwl
inputs:
- id: in_name_name_hmm
  doc: ': name; name this (first) HMM <s>'
  type: string
  inputBinding:
    prefix: -n
- id: in_resave_annotated_alignment
  doc: ': re-save annotated alignment to <f>'
  type: string
  inputBinding:
    prefix: -o
- id: in_append_append_hmm
  doc: ': append; append this HMM to <hmmfile>'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_force_allow_overwriting
  doc: ': force; allow overwriting of <hmmfile>'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_multihit_local_hmmfs
  doc: ': multi-hit local (hmmfs style)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_global_alignment_hmms
  doc: ': global alignment (hmms style, Needleman/Wunsch)'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_local_alignment_hmmsw
  doc: ': local alignment (hmmsw style, Smith/Waterman)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fast
  doc: ': Krogh/Haussler fast heuristic construction (see --gapmax)'
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_hand
  doc: ': manual construction (requires annotated alignment)'
  type: boolean
  inputBinding:
    prefix: --hand
- id: in_null
  doc: '<f>   : read null (random sequence) model from <f>'
  type: boolean
  inputBinding:
    prefix: --null
- id: in_pam
  doc: '<f>   : heuristic PAM-based prior, using BLAST PAM matrix in <f>'
  type: boolean
  inputBinding:
    prefix: --pam
- id: in_prior
  doc: ': read Dirichlet prior parameters from <f>'
  type: string
  inputBinding:
    prefix: --prior
- id: in_w_blosum
  doc: ': Henikoff simple filter weights (see --idlevel)'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: in_wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights (default)'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: in_w_me
  doc: ': maximum entropy (ME)'
  type: boolean
  inputBinding:
    prefix: --wme
- id: in_wpb
  doc: ': Henikoff position-based weights'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: in_w_voronoi
  doc: ': Sibbald/Argos Voronoi weights'
  type: boolean
  inputBinding:
    prefix: --wvoronoi
- id: in_w_none
  doc: ": don't do any weighting"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: in_no_eff
  doc: ": don't use effective sequence number; just use nseq"
  type: boolean
  inputBinding:
    prefix: --noeff
- id: in_pb_switch
  doc: ': set switch from GSC to position-based wgts at > n seqs'
  type: string
  inputBinding:
    prefix: --pbswitch
- id: in_amino
  doc: ': override autodetection, assert that seqs are protein'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_nucleic
  doc: ': override autodetection, assert that seqs are DNA/RNA'
  type: boolean
  inputBinding:
    prefix: --nucleic
- id: in_arch_pri
  doc: ': set architecture size prior to <x> {0.85} [0..1]'
  type: long
  inputBinding:
    prefix: --archpri
- id: in_binary
  doc: ': save the model in binary format, not ASCII text'
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_c_file
  doc: ': save count vectors to <f>'
  type: string
  inputBinding:
    prefix: --cfile
- id: in_gap_max
  doc: ': max fraction of gaps in mat column {0.50} [0..1]'
  type: long
  inputBinding:
    prefix: --gapmax
- id: in_id_level
  doc: ': set frac. id level used by eff. nseq and --wblosum {0.62}'
  type: double
  inputBinding:
    prefix: --idlevel
- id: in_in_format
  doc: ': input alignment is in format <s>, not Stockholm'
  type: string
  inputBinding:
    prefix: --informat
- id: in_pam_wgt
  doc: ': set weight on PAM-based prior to <x> {20.}[>=0]'
  type: long
  inputBinding:
    prefix: --pamwgt
- id: in_sw_entry
  doc: ': set S/W aggregate entry prob. to <x> {0.5}'
  type: double
  inputBinding:
    prefix: --swentry
- id: in_sw_exit
  doc: ': set S/W aggregate exit prob. to <x>  {0.5}'
  type: double
  inputBinding:
    prefix: --swexit
- id: in_verbose
  doc: ': print boring information'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmmbuild
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmbuild2
