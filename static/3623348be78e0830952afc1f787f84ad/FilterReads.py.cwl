class: CommandLineTool
id: FilterReads.py.cwl
inputs:
- id: in_name_input_qseqfastqfastasequence
  doc: Name of the input qseq/fastq/fasta/sequence file
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of the output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_filter_quality_reads
  doc: "Would not filter low quality reads if specified, only applied\nfor qseq format\n"
  type: boolean?
  inputBinding:
    prefix: -k
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
- FilterReads.py
