class: CommandLineTool
id: ssu_build.cwl
inputs:
- id: stockholm_alignment_file_to_build_cm_from
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: d
  doc: ': command-line argument is a default ssu-align-0.1 seed alignment'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: ': force; allow overwriting of CM file'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ': name the CM *file* <s>'
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ': name the CM <s>'
  type: string
  inputBinding:
    prefix: -n
- id: append
  doc: ': append this model to CM file <s>'
  type: string
  inputBinding:
    prefix: --append
- id: key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: string
  inputBinding:
    prefix: --key-out
- id: trunc
  doc: ': only include consensus columns from <x> to <y> (where <s> ="<x>-<y>")'
  type: string
  inputBinding:
    prefix: --trunc
- id: num
  doc: ': output alignment with consensus columns numbered'
  type: boolean
  inputBinding:
    prefix: --num
- id: i
  doc: ': output alignment in interleaved Stockholm (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: rf
  doc: ': use consensus column (#=GC RF) annotation in alignment'
  type: boolean
  inputBinding:
    prefix: --rf
- id: gap_thresh
  doc: ': define consensus columns as those with gap frequency <= <x> [df: 0.8]'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: ps2pdf
  doc: ': command for converting ps to pdf is <s> (not "ps2pdf")'
  type: string
  inputBinding:
    prefix: --ps2pdf
- id: ps_only
  doc: ': only save postscript secondary structure diagram, no pdf'
  type: boolean
  inputBinding:
    prefix: --ps-only
- id: e_ent
  doc: ": use 'entropy weighting' method to achieve target relative entropy"
  type: boolean
  inputBinding:
    prefix: --eent
- id: ere
  doc: ': with --eent, set target relative entropy as <x>'
  type: string
  inputBinding:
    prefix: --ere
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-build
