class: CommandLineTool
id: filter_gff_cov.cwl
inputs:
- id: in_reference
  doc: Reference FASTA file for the GFF  [required]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_strand_specific
  doc: If the coverage must be calculated on each strand
  type: boolean?
  inputBinding:
    prefix: --strand-specific
- id: in_sorted
  doc: Assumes the GFF to be correctly sorted
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_min_coverage
  doc: Minimum coverage for the contig/strand
  type: double?
  inputBinding:
    prefix: --min-coverage
- id: in_rename
  doc: "Emulates BLAST in reading the FASTA file (keeps\nonly the header before the\
    \ first space)"
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
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
- filter-gff
- cov
