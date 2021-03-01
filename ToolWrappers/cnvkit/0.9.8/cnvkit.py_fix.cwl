class: CommandLineTool
id: cnvkit.py_fix.cwl
inputs:
- id: in_cluster
  doc: "Compare and use cluster-specific values present in the\nreference profile.\
    \ (Requires that the reference\nprofile was built with the --cluster option.)"
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_sample_id
  doc: "Sample ID for target/antitarget files. Otherwise\ninferred from file names."
  type: File?
  inputBinding:
    prefix: --sample-id
- id: in_no_gc
  doc: Skip GC correction.
  type: boolean?
  inputBinding:
    prefix: --no-gc
- id: in_no_edge
  doc: Skip edge-effect correction.
  type: boolean?
  inputBinding:
    prefix: --no-edge
- id: in_no_r_mask
  doc: Skip RepeatMasker correction.
  type: boolean?
  inputBinding:
    prefix: --no-rmask
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_target
  doc: Target coverage file (.targetcoverage.cnn).
  type: string
  inputBinding:
    position: 0
- id: in_anti_target
  doc: Antitarget coverage file (.antitargetcoverage.cnn).
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: Reference coverage (.cnn).
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- fix
