class: CommandLineTool
id: gdtools_COUNT.cwl
inputs:
- id: in_verbose
  doc: produce output for each mutation counted.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File
  inputBinding:
    prefix: --reference
- id: in_output
  doc: path to output CSV file with count data. (DEFAULT=count.csv)
  type: File
  inputBinding:
    prefix: --output
- id: in_detailed_output
  doc: path to optional output tab-delimited file with detailed information about
    all mutations (Default = OFF)
  type: File
  inputBinding:
    prefix: --detailed-output
- id: in_calculate_genome_size
  doc: use APPLY to calculate final genome sizes
  type: boolean
  inputBinding:
    prefix: --calculate-genome-size
- id: in_base_substitution_statistics
  doc: calculate detailed base substitution statistics
  type: boolean
  inputBinding:
    prefix: --base-substitution-statistics
- id: in_count_polymorphisms
  doc: count polymorphic mutations (those with frequencies < 1). (Default = FALSE)
  type: boolean
  inputBinding:
    prefix: --count-polymorphisms
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to output CSV file with count data. (DEFAULT=count.csv)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_detailed_output
  doc: path to optional output tab-delimited file with detailed information about
    all mutations (Default = OFF)
  type: File
  outputBinding:
    glob: $(inputs.in_detailed_output)
cwlVersion: v1.1
baseCommand:
- gdtools
- COUNT
