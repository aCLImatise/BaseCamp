class: CommandLineTool
id: ../../../ssu_merge.cwl
inputs:
- id: force_allow_clobbering
  doc: ': force; allow file clobbering'
  type: boolean
  inputBinding:
    prefix: -f
- id: rf_only
  doc: ': when merging alignments, only keep consensus (non-gap RF) columns'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: keep
  doc: ": don't remove original files after they have been merged"
  type: boolean
  inputBinding:
    prefix: --keep
- id: input_alignments_interleaved
  doc: ': input alignments are interleaved Stockholm format (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: output_dir_created_by_ssu_prep
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-merge
