class: CommandLineTool
id: matrix2gfa.py.cwl
inputs:
- id: in_in
  doc: "FASTA file containing the sequences of the contigs obtained from the assembly\
    \ (format: 'xxx.fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_matrix
  doc: File containing the links between the ends of the contigs in tabular format
  type: File?
  inputBinding:
    prefix: -matrix
- id: in_threshold
  doc: Minimal number of links to be considered
  type: long?
  inputBinding:
    prefix: -threshold
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
  dockerPull: quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- matrix2gfa.py
