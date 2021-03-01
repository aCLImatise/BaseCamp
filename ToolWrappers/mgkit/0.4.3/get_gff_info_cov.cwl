class: CommandLineTool
id: get_gff_info_cov.cwl
inputs:
- id: in_reference
  doc: Reference FASTA file for the GFF  [required]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_json_out
  doc: The output will be a JSON dictionary
  type: boolean?
  inputBinding:
    prefix: --json-out
- id: in_strand_specific
  doc: If the coverage must be calculated on each strand
  type: boolean?
  inputBinding:
    prefix: --strand-specific
- id: in_rename
  doc: "Emulate BLAST output (use only the header part\nbefore the first space)"
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- cov
