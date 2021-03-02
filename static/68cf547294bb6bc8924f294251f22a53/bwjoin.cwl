class: CommandLineTool
id: bwjoin.cwl
inputs:
- id: in_input_path
  doc: '[dir]                           Path to the input bigwig files named [path]/<contig_name>.bw'
  type: boolean?
  inputBinding:
    prefix: --input-path
- id: in_fast_a_index
  doc: '[file]                         Fasta index file (.fai)'
  type: boolean?
  inputBinding:
    prefix: --fasta-index
- id: in_outfile
  doc: "[file]                             Path to the output .bw file produced. [default:'concatenated.bw']"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_ignore_contigs
  doc: '[comma separated list]      Comma separated list of contigs to ignore.'
  type: boolean?
  inputBinding:
    prefix: --ignore-contigs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "[file]                             Path to the output .bw file produced. [default:'concatenated.bw']"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0
cwlVersion: v1.1
baseCommand:
- bwjoin
