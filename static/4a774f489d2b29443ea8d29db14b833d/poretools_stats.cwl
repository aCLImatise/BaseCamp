class: CommandLineTool
id: poretools_stats.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: type
  doc: Which type of FASTQ entries should be reported? Def.=all
  type: string
  inputBinding:
    prefix: --type
- id: full_tsv
  doc: Verbose output in tab-separated format.
  type: boolean
  inputBinding:
    prefix: --full-tsv
- id: group
  doc: Base calling group serial number to extract, default 000
  type: string
  inputBinding:
    prefix: --group
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- stats
