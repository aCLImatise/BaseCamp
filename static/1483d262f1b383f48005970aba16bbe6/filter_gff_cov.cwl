class: CommandLineTool
id: filter_gff_cov.cwl
inputs:
- id: reference
  doc: Reference FASTA file for the GFF  [required]
  type: File
  inputBinding:
    prefix: --reference
- id: strand_specific
  doc: If the coverage must be calculated on each strand
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: sorted
  doc: Assumes the GFF to be correctly sorted
  type: boolean
  inputBinding:
    prefix: --sorted
- id: min_coverage
  doc: Minimum coverage for the contig/strand
  type: double
  inputBinding:
    prefix: --min-coverage
- id: rename
  doc: Emulates BLAST in reading the FASTA file (keeps only the header before the
    first space)
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
- filter-gff
- cov
