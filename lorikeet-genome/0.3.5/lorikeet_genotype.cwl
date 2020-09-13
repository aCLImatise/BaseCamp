class: CommandLineTool
id: ../../../lorikeet_genotype.cwl
inputs:
- id: in_bam_files
  doc: '...'
  type: string
  inputBinding:
    prefix: --bam-files
- id: in_coupled
  doc: '...'
  type: string
  inputBinding:
    prefix: --coupled
- id: in_interleaved
  doc: '...'
  type: string
  inputBinding:
    prefix: --interleaved
- id: in_one
  doc: '...'
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '...'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_reference
  doc: '...'
  type: string
  inputBinding:
    prefix: --reference
- id: in_single
  doc: '...'
  type: string
  inputBinding:
    prefix: --single
- id: in_bam_file_cache_directory
  doc: ''
  type: File
  inputBinding:
    prefix: --bam-file-cache-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorikeet
- genotype
