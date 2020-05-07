class: CommandLineTool
id: get_gff_info_cov.cwl
inputs:
- id: reference
  doc: Reference FASTA file for the GFF  [required]
  type: File
  inputBinding:
    prefix: --reference
- id: json_out
  doc: The output will be a JSON dictionary
  type: boolean
  inputBinding:
    prefix: --json-out
- id: strand_specific
  doc: If the coverage must be calculated on each strand
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: rename
  doc: Emulate BLAST output (use only the header part before the first space)
  type: boolean
  inputBinding:
    prefix: --rename
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- cov
