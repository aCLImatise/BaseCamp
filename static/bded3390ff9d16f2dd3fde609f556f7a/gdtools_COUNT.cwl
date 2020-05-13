class: CommandLineTool
id: gdtools_COUNT.cwl
inputs:
- id: verbose
  doc: produce output for each mutation counted.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: path to output CSV file with count data. (DEFAULT=count.csv)
  type: string
  inputBinding:
    prefix: --output
- id: detailed_output
  doc: path to optional output tab-delimited file with detailed information about
    all mutations (Default = OFF)
  type: string
  inputBinding:
    prefix: --detailed-output
- id: calculate_genome_size
  doc: use APPLY to calculate final genome sizes
  type: boolean
  inputBinding:
    prefix: --calculate-genome-size
- id: base_substitution_statistics
  doc: calculate detailed base substitution statistics
  type: boolean
  inputBinding:
    prefix: --base-substitution-statistics
- id: count_polymorphisms
  doc: count polymorphic mutations (those with frequencies < 1). (Default = FALSE)
  type: boolean
  inputBinding:
    prefix: --count-polymorphisms
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- COUNT
