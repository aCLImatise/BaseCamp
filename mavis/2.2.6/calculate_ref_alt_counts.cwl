class: CommandLineTool
id: calculate_ref_alt_counts.cwl
inputs:
- id: output
  doc: Path to the output file
  type: File
  inputBinding:
    prefix: --output
- id: input
  doc: Path to the Input mavis summary file
  type: File[]
  inputBinding:
    prefix: --input
- id: b
  doc: FILEPATH, --bam <name> FILEPATH Name for the library and the path to its bam
    file
  type: string
  inputBinding:
    prefix: -b
- id: reference
  doc: Path to the Input reference genome fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: event_size
  doc: The maximum size of a indel event to calculate the ref/alt counts
  type: string
  inputBinding:
    prefix: --event_size
- id: buffer
  doc: The amount of overhang (accounting for repeats) a read must have in order to
    be considered
  type: string
  inputBinding:
    prefix: --buffer
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_ref_alt_counts
