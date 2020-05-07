class: CommandLineTool
id: phyluce_snp_phase_uces.cwl
inputs:
- id: config
  doc: A configuration file containing the reference-to-read sample mapping and some
    metadata
  type: string
  inputBinding:
    prefix: --config
- id: bams
  doc: The directory containing sample-specific BAM files
  type: string
  inputBinding:
    prefix: --bams
- id: output
  doc: The directory in which to store the SNPs files
  type: string
  inputBinding:
    prefix: --output
- id: conservative
  doc: Use this flag if you want to discard all base calls with limited certainty
    (covered by <3 reads). This will produce the ambiguity character "N" instead of
    that potential base call in the final sequence.
  type: boolean
  inputBinding:
    prefix: --conservative
- id: cores
  doc: For parallel processing you can choose the number of cores you want CLC to
    run on.
  type: string
  inputBinding:
    prefix: --cores
- id: verbosity
  doc: The logging level to use
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
- phyluce_snp_phase_uces
