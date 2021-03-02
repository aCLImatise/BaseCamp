class: CommandLineTool
id: lorikeet_genotype.cwl
inputs:
- id: in_bam_files
  doc: ''
  type: string?
  inputBinding:
    prefix: --bam-files
- id: in_bam_file_cache_directory
  doc: ''
  type: File?
  inputBinding:
    prefix: --bam-file-cache-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- genotype
