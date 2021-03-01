class: CommandLineTool
id: Sreport.cwl
inputs:
- id: in_package_version
  doc: package version.
  type: string?
  inputBinding:
    prefix: -v
- id: in_help_dialog
  doc: help dialog.
  type: string?
  inputBinding:
    prefix: -h
- id: in_folder_containing_output
  doc: folder containing *bin data (output from Qreport). Mandatory option.
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_type_report_generated
  doc: "Type of report to be generated: 'Q' for quality summary\nreport, 'F' for filter\
    \ summary report (single-end reads), and\n'P' for filter summary report (paired-end\
    \ reads)\ndata filter summary report. Mandatory option,"
  type: string?
  inputBinding:
    prefix: -t
- id: in_file_extension_mandatory
  doc: file (with NO extension). Mandatory option.
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_folder_containing_output
  doc: folder containing *bin data (output from Qreport). Mandatory option.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_folder_containing_output)
hints: []
cwlVersion: v1.1
baseCommand:
- Sreport
