class: CommandLineTool
id: intron_exon_reads.py.cwl
inputs:
- id: in_gff
  doc: GFF or GTF file containing annotations
  type: File
  inputBinding:
    prefix: --gff
- id: in_bam
  doc: BAM file containing reads to be counted
  type: File
  inputBinding:
    prefix: --bam
- id: in_stranded
  doc: "Use strand-specific merging and overlap. Default is to\nignore strand"
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_processes
  doc: Number of processes to use in parallel.
  type: long
  inputBinding:
    prefix: --processes
- id: in_verbose
  doc: Verbose (goes to stderr)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_py_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_documentation
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
- intron_exon_reads.py
