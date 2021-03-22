class: CommandLineTool
id: emu_build_database.cwl
inputs:
- id: in_names
  doc: path to names.dmp file
  type: File?
  inputBinding:
    prefix: --names
- id: in_nodes
  doc: path to nodes.dmp file
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_sequences
  doc: path to fasta of database sequences
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_seq_two_tax
  doc: "path to tsv mapping species tax id to fasta sequence\nheaders\n"
  type: long?
  inputBinding:
    prefix: --seq2tax
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/emu:1.0.1--0
cwlVersion: v1.1
baseCommand:
- emu
- build-database
