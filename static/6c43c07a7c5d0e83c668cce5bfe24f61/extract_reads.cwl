class: CommandLineTool
id: extract_reads.cwl
inputs:
- id: in_output_results_given
  doc: ': Output results in the given file [default=stdout]'
  type: File
  inputBinding:
    prefix: -o
- id: in_prints_version_number
  doc: ': prints the version number.'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_results_given
  doc: ': Output results in the given file [default=stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_results_given)
cwlVersion: v1.1
baseCommand:
- extract_reads
