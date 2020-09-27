class: CommandLineTool
id: fastutils_cutN.cwl
inputs:
- id: in_input_file_fastx
  doc: input file in fastx format. Use - for stdin.
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_fasta
  doc: output file in fasta format. Use - for stdout.
  type: File
  inputBinding:
    prefix: -o
- id: in_print_version_build
  doc: print version and build date
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_fasta
  doc: output file in fasta format. Use - for stdout.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_fasta)
cwlVersion: v1.1
baseCommand:
- fastutils
- cutN
