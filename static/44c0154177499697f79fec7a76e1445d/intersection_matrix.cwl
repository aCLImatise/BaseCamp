class: CommandLineTool
id: intersection_matrix.py.cwl
inputs:
- id: beds
  doc: BED/GTF/GFF/VCF filenames, e.g., in a directory of bed files, you can use *.bed
  type: string
  inputBinding:
    position: 0
- id: frac
  doc: Instead of counts, report fraction overlapped
  type: boolean
  inputBinding:
    prefix: --frac
- id: enrichment
  doc: Run randomizations (default 1000, specify otherwise with --iterations) on each
    pairwise comparison and compute the enrichment score as (actual intersection count
    + 1) / (median randomized + 1)
  type: boolean
  inputBinding:
    prefix: --enrichment
- id: genome
  doc: Required argument if --enrichment is used. Needs to be a string assembly name
    like "dm3" or "hg19"
  type: string
  inputBinding:
    prefix: --genome
- id: iterations
  doc: Number of randomizations to perform for enrichement scores
  type: string
  inputBinding:
    prefix: --iterations
- id: processes
  doc: Number of CPUs to use for randomization
  type: string
  inputBinding:
    prefix: --processes
- id: test
  doc: Ignore any input BED files and use test BED files
  type: boolean
  inputBinding:
    prefix: --test
- id: verbose
  doc: 'Be verbose: print which files are currently being intersected and timing info
    at the end.'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- intersection_matrix.py
