class: CommandLineTool
id: poppunk_prune.cwl
inputs:
- id: in_remove
  doc: File listing sequences to remove (required)
  type: File?
  inputBinding:
    prefix: --remove
- id: in_distances
  doc: "Prefix of input pickle of pre-calculated distances\n(required)"
  type: string?
  inputBinding:
    prefix: --distances
- id: in_ref_db
  doc: Location of reference db, if resketching
  type: string?
  inputBinding:
    prefix: --ref-db
- id: in_output
  doc: Prefix for output files (required)
  type: string?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk_prune
