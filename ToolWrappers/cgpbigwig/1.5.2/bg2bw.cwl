class: CommandLineTool
id: bg2bw.cwl
inputs:
- id: in_input
  doc: '[file]           Path to the input [b|cr]am file.'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_outfile
  doc: "[file]         Path to the output .bw file produced. [default:'output.bw']"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_chrom_list
  doc: '[file]       Path to chrom.list a .tsv where first two columns are contig
    name and length.'
  type: boolean?
  inputBinding:
    prefix: --chromList
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "[file]         Path to the output .bw file produced. [default:'output.bw']"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0
cwlVersion: v1.1
baseCommand:
- bg2bw
