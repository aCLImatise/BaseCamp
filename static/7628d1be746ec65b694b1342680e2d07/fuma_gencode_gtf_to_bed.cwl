class: CommandLineTool
id: fuma_gencode_gtf_to_bed.cwl
inputs:
- id: in_output
  doc: output filename; '-' for stdout
  type: File?
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_gene_code_gtf_file
  doc: "Input GTF file, e.g. 'gencode_gtf_file.gtf' - not as\n.gz"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename; '-' for stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- fuma-gencode-gtf-to-bed
