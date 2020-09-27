class: CommandLineTool
id: phyluce_snp_screen_phased_alignments.cwl
inputs:
- id: in_output
  doc: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]\n[--output-format\
    \ {fasta,nexus,phylip,clustal,emboss,stockholm}]\n[--include-missing] [--random]\n\
    [--numerical-encoding]\n[--cores CORES]\n[--verbosity {INFO,WARN,CRITICAL}]\n\
    [--log-path LOG_PATH]"
  type: File
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: The directory containing the alignment files
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --output-format
- id: in_include_missing
  doc: "Include sites within missing/ambiguous information (-,\n?, N, X)"
  type: boolean
  inputBinding:
    prefix: --include-missing
- id: in_random
  doc: Pick one random site from each locus
  type: boolean
  inputBinding:
    prefix: --random
- id: in_numerical_encoding
  doc: "Output SNP calls encoded as 0 (ref/ref), 1 (ref/alt),\nor 2 (alt/alt)"
  type: boolean
  inputBinding:
    prefix: --numerical-encoding
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs."
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_snp_screen_phased_alignments
