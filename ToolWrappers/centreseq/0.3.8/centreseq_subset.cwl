class: CommandLineTool
id: ../../../centreseq_subset.cwl
inputs:
- id: in_input_samples
  doc: "Path to a new line separated text file containing\neach Sample ID to target\
    \  [required]"
  type: File
  inputBinding:
    prefix: --input-samples
- id: in_summary_report
  doc: "Path to summary report generated by the centreseq\ncore command, i.e. summary_report.tsv\
    \  [required]"
  type: File
  inputBinding:
    prefix: --summary-report
- id: in_out_path
  doc: "Path to desired output file. If no value is\nprovided, will create a new report\
    \ in the same\ndirectory as the input summary report."
  type: File
  inputBinding:
    prefix: --outpath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- centreseq
- subset
