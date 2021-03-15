class: CommandLineTool
id: mg_toolkit_original_metadata.cwl
inputs:
- id: in_accession
  doc: "Provide study accession, e.g. PRJEB1787 or ERP001736.\n"
  type: string[]
  inputBinding:
    prefix: --accession
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mg-toolkit:0.9.1--py_0
cwlVersion: v1.1
baseCommand:
- mg-toolkit
- original_metadata
