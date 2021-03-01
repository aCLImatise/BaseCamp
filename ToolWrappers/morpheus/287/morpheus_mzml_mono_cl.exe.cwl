class: CommandLineTool
id: morpheus_mzml_mono_cl.exe.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/morpheus:287--0
cwlVersion: v1.1
baseCommand:
- morpheus_mzml_mono_cl.exe
