class: CommandLineTool
id: NOMe_filtering.cwl
inputs:
- id: in_genome_folder
  doc: "Enter the genome folder you wish to use to extract sequences from (full path\
    \ only!). Accepted\nformats are FastA files ending with '.fa' or '.fasta'. Specifying\
    \ a genome folder path is mandatory."
  type: File?
  inputBinding:
    prefix: --genome_folder
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bismark:0.23.0--0
cwlVersion: v1.1
baseCommand:
- NOMe_filtering
