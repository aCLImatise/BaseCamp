class: CommandLineTool
id: surpyvor_merge.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_variants
  doc: vcf files to merge
  type: string[]
  inputBinding:
    prefix: --variants
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_distance
  doc: distance between variants to merge
  type: string?
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: Minimum length of variants to consider
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_callers
  doc: Minimum number of callers to support a variant
  type: long?
  inputBinding:
    prefix: --callers
- id: in_ignore_type
  doc: Ignore the type of the structural variant
  type: boolean?
  inputBinding:
    prefix: --ignore_type
- id: in_strand
  doc: Take strand into account
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_estimate_distance
  doc: "Estimate distance between calls\n"
  type: boolean?
  inputBinding:
    prefix: --estimate_distance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- surpyvor
- merge
