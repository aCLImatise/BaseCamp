class: CommandLineTool
id: stats_from_bam.cwl
inputs:
- id: bam
  doc: Path to bam file.
  type: string
  inputBinding:
    position: 0
- id: all_alignments
  doc: 'Include secondary and supplementary alignments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_alignments
- id: output
  doc: "Output alignment stats to file instead of stdout. (default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output
- id: summary
  doc: "Output summary to file instead of stderr. (default: <_io.TextIOWrapper name='<stderr>'\
    \ mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --summary
- id: threads
  doc: 'Number of threads for parallel processing. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- stats_from_bam
