#!/usr/bin/env cwl-runner

baseCommand:
- hmmbuild2
class: CommandLineTool
cwlVersion: v1.0
id: hmmbuild2
inputs:
- doc: ': name; name this (first) HMM <s>'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': re-save annotated alignment to <f>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': append; append this HMM to <hmmfile>'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': force; allow overwriting of <hmmfile>'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ': multi-hit local (hmmfs style)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': global alignment (hmms style, Needleman/Wunsch)'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': local alignment (hmmsw style, Smith/Waterman)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': Krogh/Haussler fast heuristic construction (see --gapmax)'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: ': manual construction (requires annotated alignment)'
  id: hand
  inputBinding:
    prefix: --hand
  type: boolean
- doc: '<f>   : read null (random sequence) model from <f>'
  id: 'null'
  inputBinding:
    prefix: --null
  type: boolean
- doc: '<f>   : heuristic PAM-based prior, using BLAST PAM matrix in <f>'
  id: pam
  inputBinding:
    prefix: --pam
  type: boolean
- doc: ': read Dirichlet prior parameters from <f>'
  id: prior
  inputBinding:
    prefix: --prior
  type: string
- doc: ': Henikoff simple filter weights (see --idlevel)'
  id: w_blosum
  inputBinding:
    prefix: --wblosum
  type: boolean
- doc: ': Gerstein/Sonnhammer/Chothia tree weights (default)'
  id: wgs_c
  inputBinding:
    prefix: --wgsc
  type: boolean
- doc: ': maximum entropy (ME)'
  id: w_me
  inputBinding:
    prefix: --wme
  type: boolean
- doc: ': Henikoff position-based weights'
  id: wpb
  inputBinding:
    prefix: --wpb
  type: boolean
- doc: ': Sibbald/Argos Voronoi weights'
  id: w_voronoi
  inputBinding:
    prefix: --wvoronoi
  type: boolean
- doc: ": don't do any weighting"
  id: w_none
  inputBinding:
    prefix: --wnone
  type: boolean
- doc: ": don't use effective sequence number; just use nseq"
  id: no_eff
  inputBinding:
    prefix: --noeff
  type: boolean
- doc: ': set switch from GSC to position-based wgts at > n seqs'
  id: pb_switch
  inputBinding:
    prefix: --pbswitch
  type: string
- doc: ': override autodetection, assert that seqs are protein'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': override autodetection, assert that seqs are DNA/RNA'
  id: nucleic
  inputBinding:
    prefix: --nucleic
  type: boolean
- doc: ': set architecture size prior to <x> {0.85} [0..1]'
  id: arch_pri
  inputBinding:
    prefix: --archpri
  type: string
- doc: ': save the model in binary format, not ASCII text'
  id: binary
  inputBinding:
    prefix: --binary
  type: boolean
- doc: ': save count vectors to <f>'
  id: c_file
  inputBinding:
    prefix: --cfile
  type: string
- doc: ': max fraction of gaps in mat column {0.50} [0..1]'
  id: gap_max
  inputBinding:
    prefix: --gapmax
  type: string
- doc: ': set frac. id level used by eff. nseq and --wblosum {0.62}'
  id: id_level
  inputBinding:
    prefix: --idlevel
  type: string
- doc: ': input alignment is in format <s>, not Stockholm'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': set weight on PAM-based prior to <x> {20.}[>=0]'
  id: pam_wgt
  inputBinding:
    prefix: --pamwgt
  type: string
- doc: ': set S/W aggregate entry prob. to <x> {0.5}'
  id: sw_entry
  inputBinding:
    prefix: --swentry
  type: string
- doc: ': set S/W aggregate exit prob. to <x>  {0.5}'
  id: sw_exit
  inputBinding:
    prefix: --swexit
  type: string
- doc: ': print boring information'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
