class: CommandLineTool
id: vcfevenregions.cwl
inputs:
- id: in_fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences.
  type: File?
  inputBinding:
    prefix: --fasta-reference
- id: in_number_of_regions
  doc: The number of desired regions.
  type: long?
  inputBinding:
    prefix: --number-of-regions
- id: in_number_of_positions
  doc: The number of positions per region.
  type: long?
  inputBinding:
    prefix: --number-of-positions
- id: in_offset
  doc: "Add an offset to region positioning, to avoid boundary\nrelated artifacts\
    \ in downstream processing."
  type: string?
  inputBinding:
    prefix: --offset
- id: in_overlap
  doc: The number of sites to overlap between regions.  Default 0.
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_separator
  doc: Specify string to use to separate region output.  Default '-'
  type: string?
  inputBinding:
    prefix: --separator
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfevenregions
