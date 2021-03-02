class: CommandLineTool
id: paths2gfa.py.cwl
inputs:
- id: in_in
  doc: "FASTA file containing the sequences of the scaffolds obtained from the assembly\
    \ (format: 'xxx.fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_paths
  doc: "File containing the paths between scaffolds (obtained from the matrix) (format:\
    \ 'xxx.paths.txt')"
  type: File?
  inputBinding:
    prefix: -paths
- id: in_out
  doc: Output directory for saving the GFA file and the corresponding FASTA file
  type: File?
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory for saving the GFA file and the corresponding FASTA file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.0.2--0
cwlVersion: v1.1
baseCommand:
- paths2gfa.py
