class: CommandLineTool
id: fio_env.cwl
inputs:
- id: in_formats
  doc: Enumerate the available formats.
  type: boolean?
  inputBinding:
    prefix: --formats
- id: in_credentials
  doc: Print credentials.
  type: boolean?
  inputBinding:
    prefix: --credentials
- id: in_gdal_data
  doc: Print GDAL data path.
  type: boolean?
  inputBinding:
    prefix: --gdal-data
- id: in_proj_data
  doc: Print PROJ data path.
  type: boolean?
  inputBinding:
    prefix: --proj-data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- env
