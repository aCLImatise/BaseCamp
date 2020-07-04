class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastutils_cutN.cwl
inputs:
- id: input_file_fastx
  doc: input file in fastx format. Use - for stdin.
  type: string
  inputBinding:
    prefix: -i
- id: output_file_fasta
  doc: output file in fasta format. Use - for stdout.
  type: string
  inputBinding:
    prefix: -o
- id: print_version_build
  doc: print version and build date
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- cutN
