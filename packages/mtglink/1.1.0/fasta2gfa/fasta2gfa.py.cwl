class: CommandLineTool
id: fasta2gfa.py.cwl
inputs:
- id: in_in
  doc: "FASTA file containing the sequences of the scaffolds obtained from the assembly\
    \ (format: 'xxx.fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_min
  doc: Minimum size of the 'Ns' region to treat/process as a gap
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: Maximum size of the 'Ns' region to treat/process as a gap
  type: long?
  inputBinding:
    prefix: -max
- id: in_contigs
  doc: Minimum size of the flanking contigs of the 'Ns' region to treat/process as
    a gap
  type: long?
  inputBinding:
    prefix: -contigs
- id: in_out
  doc: Output directory for saving the GFA file
  type: File?
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory for saving the GFA file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- fasta2gfa.py
