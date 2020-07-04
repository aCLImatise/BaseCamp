class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/intron_exon_reads.py.cwl
inputs:
- id: gff
  doc: GFF or GTF file containing annotations
  type: string
  inputBinding:
    prefix: --gff
- id: bam
  doc: BAM file containing reads to be counted
  type: string
  inputBinding:
    prefix: --bam
- id: stranded
  doc: Use strand-specific merging and overlap. Default is to ignore strand
  type: boolean
  inputBinding:
    prefix: --stranded
- id: processes
  doc: Number of processes to use in parallel.
  type: string
  inputBinding:
    prefix: --processes
- id: verbose
  doc: Verbose (goes to stderr)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: py_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: documentation
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- intron_exon_reads.py
