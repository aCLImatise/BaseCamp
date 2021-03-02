class: CommandLineTool
id: calculate_ref_alt_counts.cwl
inputs:
- id: in_output
  doc: Path to the output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_input
  doc: Path to the Input mavis summary file
  type: File[]
  inputBinding:
    prefix: --input
- id: in_filepath__bam
  doc: "FILEPATH, --bam <name> FILEPATH\nName for the library and the path to its\
    \ bam file"
  type: File?
  inputBinding:
    prefix: -b
- id: in_reference
  doc: Path to the Input reference genome fasta file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_event_size
  doc: "The maximum size of a indel event to calculate the\nref/alt counts"
  type: long?
  inputBinding:
    prefix: --event_size
- id: in_buffer
  doc: "The amount of overhang (accounting for repeats) a read\nmust have in order\
    \ to be considered\n"
  type: string?
  inputBinding:
    prefix: --buffer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- calculate_ref_alt_counts
