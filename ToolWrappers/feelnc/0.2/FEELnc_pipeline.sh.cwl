class: CommandLineTool
id: FEELnc_pipeline.sh.cwl
inputs:
- id: in_outdir
  doc: ''
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: ''
  type: string?
  inputBinding:
    prefix: --outname
- id: in_genome
  doc: ''
  type: string?
  inputBinding:
    prefix: --genome
- id: in_reference
  doc: ''
  type: string?
  inputBinding:
    prefix: --reference
- id: in_candidate
  doc: ''
  type: string?
  inputBinding:
    prefix: --candidate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/feelnc:0.2--pl526_0
cwlVersion: v1.1
baseCommand:
- FEELnc_pipeline.sh
