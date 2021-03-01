class: CommandLineTool
id: alfred_bam2match.cwl
inputs:
- id: in_arg_min_mapping
  doc: '[ --map-qual ] arg (=0)          min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg              reference fasta file'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_gzipped_file
  doc: '[ --outfile ] arg (="match.gz")  gzipped output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_contig_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_file
  doc: '[ --outfile ] arg (="match.gz")  gzipped output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alfred:0.2.3--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- alfred
- bam2match
