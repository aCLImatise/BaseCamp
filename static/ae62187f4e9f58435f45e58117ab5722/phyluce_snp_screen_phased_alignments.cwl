class: CommandLineTool
id: phyluce_snp_screen_phased_alignments.cwl
inputs:
- id: alignments
  doc: The directory containing the alignment files
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The directory in which to store the output files
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --output-format
- id: include_missing
  doc: Include sites within missing/ambiguous information (-, ?, N, X)
  type: boolean
  inputBinding:
    prefix: --include-missing
- id: random
  doc: Pick one random site from each locus
  type: boolean
  inputBinding:
    prefix: --random
- id: numerical_encoding
  doc: Output SNP calls encoded as 0 (ref/ref), 1 (ref/alt), or 2 (alt/alt)
  type: boolean
  inputBinding:
    prefix: --numerical-encoding
- id: cores
  doc: Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs.
  type: string
  inputBinding:
    prefix: --cores
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_screen_phased_alignments
