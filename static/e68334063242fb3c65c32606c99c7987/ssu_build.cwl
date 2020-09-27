class: CommandLineTool
id: ssu_build.cwl
inputs:
- id: in_commandline_argument_default
  doc: ': command-line argument is a default ssu-align-0.1 seed alignment'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force_allow_overwriting
  doc: ': force; allow overwriting of CM file'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_name_cm_file
  doc: ': name the CM *file* <s>'
  type: File
  inputBinding:
    prefix: -o
- id: in_name_cm_s
  doc: ': name the CM <s>'
  type: string
  inputBinding:
    prefix: -n
- id: in_append
  doc: ': append this model to CM file <s>'
  type: File
  inputBinding:
    prefix: --append
- id: in_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File
  inputBinding:
    prefix: --key-out
- id: in_trunc
  doc: ': only include consensus columns from <x> to <y> (where <s> ="<x>-<y>")'
  type: string
  inputBinding:
    prefix: --trunc
- id: in_num
  doc: ': output alignment with consensus columns numbered'
  type: boolean
  inputBinding:
    prefix: --num
- id: in_output_alignment_lineseq
  doc: ': output alignment in interleaved Stockholm (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_gap_thresh
  doc: ': define consensus columns as those with gap frequency <= <x> [df: 0.8]'
  type: double
  inputBinding:
    prefix: --gapthresh
- id: in_pstwo_pdf
  doc: ': command for converting ps to pdf is <s> (not "ps2pdf")'
  type: long
  inputBinding:
    prefix: --ps2pdf
- id: in_ps_only
  doc: ': only save postscript secondary structure diagram, no pdf'
  type: boolean
  inputBinding:
    prefix: --ps-only
- id: in_e_ent
  doc: ": use 'entropy weighting' method to achieve target relative entropy"
  type: boolean
  inputBinding:
    prefix: --eent
- id: in_ere
  doc: ': with --eent, set target relative entropy as <x>'
  type: string
  inputBinding:
    prefix: --ere
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_stockholm_alignment_file_to_build_cm_from
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File
  outputBinding:
    glob: $(inputs.in_key_out)
cwlVersion: v1.1
baseCommand:
- ssu-build
