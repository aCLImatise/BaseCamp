class: CommandLineTool
id: snpit_run.py.cwl
inputs:
- id: in_input
  doc: "the path to the VCF or FASTA file to read and classify\n(either can be bzip2ed/gzipped)\n"
  type: File
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snpit-run.py
