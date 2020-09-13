class: CommandLineTool
id: ../../../gsort.cwl
inputs:
- id: in_chromosome_mappings
  doc: a file used to re-map chromosome names for example from hg19 to GRCh37
  type: File
  inputBinding:
    prefix: --chromosomemappings
- id: in_memory
  doc: 'megabytes of memory to use before writing to temp files. [default: 2800]'
  type: long
  inputBinding:
    prefix: --memory
- id: in_parent
  doc: for gff only. given rows with same chrom and start put those with a 'Parent'
    attribute first
  type: boolean
  inputBinding:
    prefix: --parent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsort
