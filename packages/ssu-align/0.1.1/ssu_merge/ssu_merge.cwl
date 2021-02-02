class: CommandLineTool
id: ssu_merge.cwl
inputs:
- id: in_force_allow_clobbering
  doc: ': force; allow file clobbering'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_rf_only
  doc: ': when merging alignments, only keep consensus (non-gap RF) columns'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: in_keep
  doc: ": don't remove original files after they have been merged"
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_input_alignments_interleaved
  doc: ': input alignments are interleaved Stockholm format (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_list
  doc: ''
  type: File
  inputBinding:
    prefix: --list
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_output_dir_created_by_ssu_prep
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a_lns
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-merge
