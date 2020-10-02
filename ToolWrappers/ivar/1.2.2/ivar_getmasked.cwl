class: CommandLineTool
id: ivar_getmasked.cwl
inputs:
- id: in_required_input_filtered
  doc: (Required) Input filtered variants tsv generated from `ivar filtervariants`
  type: boolean
  inputBinding:
    prefix: -i
- id: in_required_bed_file
  doc: (Required) BED file with primer sequences and positions
  type: boolean
  inputBinding:
    prefix: -b
- id: in_required_primer_pair
  doc: (Required) Primer pair information file containing left and right primer names
    for the same amplicon separated by a tab
  type: boolean
  inputBinding:
    prefix: -f
- id: in_required_prefix_output
  doc: (Required) Prefix for the output text file
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_output
  doc: (Required) Prefix for the output text file
  type: File
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
cwlVersion: v1.1
baseCommand:
- ivar
- getmasked
