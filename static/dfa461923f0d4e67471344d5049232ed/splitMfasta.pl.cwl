class: CommandLineTool
id: splitMfasta.pl.cwl
inputs:
- id: in_minsize
  doc: "each split output fasta file total to at least this man base pairs.\nset this\
    \ to 0 to split the input in single sequence files."
  type: File?
  inputBinding:
    prefix: --minsize
- id: in_output_path
  doc: "prefix to output path. Output files are\ns/input.split.1.fa\ns/input.split.2.fa\n\
    s/input.split.3.fa\n...\n"
  type: File?
  inputBinding:
    prefix: --outputpath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- splitMfasta.pl
