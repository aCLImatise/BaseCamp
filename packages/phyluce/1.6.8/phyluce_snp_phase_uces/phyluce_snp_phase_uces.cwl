class: CommandLineTool
id: phyluce_snp_phase_uces.cwl
inputs:
- id: in_config
  doc: "A configuration file containing the reference-to-read\nsample mapping and\
    \ some metadata"
  type: File
  inputBinding:
    prefix: --config
- id: in_bams
  doc: The directory containing sample-specific BAM files
  type: Directory
  inputBinding:
    prefix: --bams
- id: in_output
  doc: The directory in which to store the SNPs files
  type: Directory
  inputBinding:
    prefix: --output
- id: in_conservative
  doc: "Use this flag if you want to discard all base calls\nwith limited certainty\
    \ (covered by <3 reads). This\nwill produce the ambiguity character \"N\" instead\
    \ of\nthat potential base call in the final sequence."
  type: boolean
  inputBinding:
    prefix: --conservative
- id: in_cores
  doc: "For parallel processing you can choose the number of\ncores you want CLC to\
    \ run on."
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use
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
- phyluce_snp_phase_uces
