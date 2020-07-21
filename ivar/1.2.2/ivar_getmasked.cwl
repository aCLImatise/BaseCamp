class: CommandLineTool
id: ../../../ivar_getmasked.cwl
inputs:
- id: required_input_filtered
  doc: (Required) Input filtered variants tsv generated from `ivar filtervariants`
  type: boolean
  inputBinding:
    prefix: -i
- id: required_bed_file
  doc: (Required) BED file with primer sequences and positions
  type: boolean
  inputBinding:
    prefix: -b
- id: required_primer_pair
  doc: (Required) Primer pair information file containing left and right primer names
    for the same amplicon separated by a tab
  type: boolean
  inputBinding:
    prefix: -f
- id: required_prefix_output
  doc: (Required) Prefix for the output text file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- getmasked
