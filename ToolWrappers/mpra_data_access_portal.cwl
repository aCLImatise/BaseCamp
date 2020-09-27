class: CommandLineTool
id: mpra_data_access_portal.cwl
inputs:
- id: in_self_test
  doc: Run self-check and tests
  type: boolean
  inputBinding:
    prefix: --self-test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mpra-data-access-portal
