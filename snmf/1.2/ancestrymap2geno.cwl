class: CommandLineTool
id: ../../../ancestrymap2geno.cwl
inputs:
- id: in_input
  doc: --help
  type: File
  inputBinding:
    prefix: -input
- id: in_output
  doc: --help.geno
  type: File
  inputBinding:
    prefix: -output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ancestrymap2geno
