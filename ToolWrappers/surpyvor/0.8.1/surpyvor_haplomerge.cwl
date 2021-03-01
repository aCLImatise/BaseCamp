class: CommandLineTool
id: surpyvor_haplomerge.cwl
inputs:
- id: in_verbose
  doc: "Print out more information while running. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_variants
  doc: "[VARIANTS [VARIANTS ...]]\nvcf files to merge (default: None)"
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_output
  doc: 'output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_name
  doc: 'name of sample in output VCF (default: stdout)'
  type: string?
  inputBinding:
    prefix: --name
- id: in_distance
  doc: 'distance between variants to merge (default: 200)'
  type: long?
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: 'Minimum length of variants to consider (default: 50)'
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_callers
  doc: "Minimum number of callers to support a variant\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --callers
- id: in_ignore_type
  doc: "Ignore the type of the structural variant (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --ignore_type
- id: in_strand
  doc: 'Take strand into account (default: False)'
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_estimate_distance
  doc: "Estimate distance between calls (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --estimate_distance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- surpyvor
- haplomerge
