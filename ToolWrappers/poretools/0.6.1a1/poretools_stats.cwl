class: CommandLineTool
id: poretools_stats.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_type
  doc: Which type of FASTQ entries should be reported? Def.=all
  type: string?
  inputBinding:
    prefix: --type
- id: in_full_tsv
  doc: Verbose output in tab-separated format.
  type: boolean?
  inputBinding:
    prefix: --full-tsv
- id: in_group
  doc: Base calling group serial number to extract, default 000
  type: long?
  inputBinding:
    prefix: --group
- id: in_files
  doc: The input FAST5 files.
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
- poretools
- stats
