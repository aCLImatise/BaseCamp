class: CommandLineTool
id: arcasHLA_merge.cwl
inputs:
- id: in_in_dir
  doc: directory containing arcasHLA files
  type: boolean?
  inputBinding:
    prefix: --indir
- id: in_outdir
  doc: out directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_run
  doc: run name
  type: boolean?
  inputBinding:
    prefix: --run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: out directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- arcasHLA
- merge
