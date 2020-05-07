class: CommandLineTool
id: checkv_contamination.cwl
inputs:
- id: input
  doc: Input nucleotide sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: d
  doc: 'Reference database path. By default the CHECKVDB environment variable is used
    (default: None)'
  type: File
  inputBinding:
    prefix: -d
- id: t
  doc: 'Number of threads to use for Prodigal and hmmsearch (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: restart
  doc: 'Overwrite existing intermediate files. By default CheckV continues where program
    left off (default: False)'
  type: boolean
  inputBinding:
    prefix: --restart
- id: quiet
  doc: 'Suppress logging messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- contamination
