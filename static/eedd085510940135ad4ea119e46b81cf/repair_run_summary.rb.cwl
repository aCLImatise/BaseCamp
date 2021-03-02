class: CommandLineTool
id: repair_run_summary.rb.cwl
inputs:
- id: in_base_name
  doc: Original MSMS spectrum file used for search
  type: File?
  inputBinding:
    prefix: --base-name
- id: in_raw_type
  doc: Raw data type used for search
  type: string?
  inputBinding:
    prefix: --raw-type
- id: in_om_ssa_it_ol
  doc: Add a fragment ion tolerance parameter to the omssa search summary
  type: string?
  inputBinding:
    prefix: --omssa-itol
- id: in_file_one_dot_pep_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- repair_run_summary.rb
