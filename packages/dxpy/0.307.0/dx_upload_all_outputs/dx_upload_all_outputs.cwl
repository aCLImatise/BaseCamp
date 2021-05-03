class: CommandLineTool
id: dx_upload_all_outputs.cwl
inputs:
- id: in_except
  doc: "Do not upload the input with this name. (May be used\nmultiple times.)"
  type: string?
  inputBinding:
    prefix: --except
- id: in_parallel
  doc: Upload the files in parallel
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_sequential
  doc: Upload the files sequentially
  type: boolean?
  inputBinding:
    prefix: --sequential
- id: in_clear_json
  doc: Clears the output JSON file prior to starting upload.
  type: File?
  inputBinding:
    prefix: --clearJSON
- id: in_wait_on_close
  doc: Wait for files to close, default is not to wait
  type: boolean?
  inputBinding:
    prefix: --wait-on-close
- id: in_xattr_properties
  doc: Get filesystem attributes and set them as properties on each file uploaded
  type: boolean?
  inputBinding:
    prefix: --xattr-properties
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clear_json
  doc: Clears the output JSON file prior to starting upload.
  type: File?
  outputBinding:
    glob: $(inputs.in_clear_json)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-upload-all-outputs
