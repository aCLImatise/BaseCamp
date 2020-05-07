class: CommandLineTool
id: gsort_PATH.cwl
inputs:
- id: path
  doc: a tab-delimited file to sort
  type: File
  inputBinding:
    position: 0
- id: genome
  doc: a genome file of chromosome sizes and order
  type: string
  inputBinding:
    position: 1
- id: chromosome_mappings
  doc: a file used to re-map chromosome names for example from hg19 to GRCh37
  type: string
  inputBinding:
    prefix: --chromosomemappings
- id: memory
  doc: 'megabytes of memory to use before writing to temp files. [default: 2800]'
  type: string
  inputBinding:
    prefix: --memory
- id: parent
  doc: for gff only. given rows with same chrom and start put those with a 'Parent'
    attribute first
  type: boolean
  inputBinding:
    prefix: --parent
outputs: []
cwlVersion: v1.1
baseCommand:
- gsort
- PATH
