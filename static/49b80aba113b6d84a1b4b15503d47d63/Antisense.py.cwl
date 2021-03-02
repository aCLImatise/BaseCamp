class: CommandLineTool
id: Antisense.py.cwl
inputs:
- id: in_input_file_format
  doc: 'input file, format: qseq/fastq/fasta/sequence'
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of the output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_length_show_one
  doc: "Length to show in one line for fasta. [Default: show all in one\nline]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_filter_quality_reads
  doc: Would not filter low quality reads if specified
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_caaggaacggt
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- Antisense.py
