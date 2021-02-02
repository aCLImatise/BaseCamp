class: CommandLineTool
id: netcdf_metadata_info.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- netcdf-metadata-info
