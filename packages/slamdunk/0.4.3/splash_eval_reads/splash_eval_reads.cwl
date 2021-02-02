class: CommandLineTool
id: ../../../splash_eval_reads.cwl
inputs:
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_bed
  doc: BED file
  type: File
  inputBinding:
    prefix: --bed
- id: in_reference
  doc: "Reference fasta file\n"
  type: File
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- splash
- eval-reads
