class: CommandLineTool
id: sequana_substractor.cwl
inputs:
- id: in_input
  doc: 'input FastQ file (default: None)'
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'output FastQ filename (default: reads.fastq)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_directory
  doc: "input fastq gzipped or not (default:\nsequana_substractor)"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_mapper
  doc: 'mapper minimap2 or bwa (default: minimap2)'
  type: string?
  inputBinding:
    prefix: --mapper
- id: in_threads
  doc: 'threading (default: 4)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output FastQ filename (default: reads.fastq)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_directory
  doc: "input fastq gzipped or not (default:\nsequana_substractor)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_substractor
