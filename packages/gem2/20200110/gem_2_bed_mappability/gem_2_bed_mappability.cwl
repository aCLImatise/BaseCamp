class: CommandLineTool
id: gem_2_bed_mappability.cwl
inputs:
- id: in_index
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: --index
- id: in_input
  doc: (default=stdin)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: (mandatory)
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-2-bed
- mappability
