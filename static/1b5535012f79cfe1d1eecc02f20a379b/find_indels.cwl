class: CommandLineTool
id: find_indels.cwl
inputs:
- id: bam
  doc: Path to bam file.
  type: string
  inputBinding:
    position: 0
- id: min_in_del_length
  doc: 'Filter out indels shorter than this length. (default: 0)'
  type: long
  inputBinding:
    prefix: --min_indel_length
- id: all_alignments
  doc: 'Include secondary and supplementary alignments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_alignments
- id: output
  doc: "Output indels to file instead of stdout. (default: <_io.TextIOWrapper name='<stdout>'\
    \ mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output
- id: bed
  doc: 'Additionaly output a .bed file. (default: None)'
  type: string
  inputBinding:
    prefix: --bed
- id: threads
  doc: 'Number of threads for parallel processing. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- find_indels
