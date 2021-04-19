class: CommandLineTool
id: gfa2fasta.py.cwl
inputs:
- id: in_in
  doc: "GFA 1.0 file (format: 'xxx.gfa')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output directory for saving the FASTA file
  type: File?
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory for saving the FASTA file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- gfa2fasta.py
