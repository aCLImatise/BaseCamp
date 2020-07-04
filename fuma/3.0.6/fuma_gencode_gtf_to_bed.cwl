class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fuma_gencode_gtf_to_bed.cwl
inputs:
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: gene_code_gtf_file
  doc: Input GTF file, e.g. 'gencode_gtf_file.gtf' - not as .gz
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fuma-gencode-gtf-to-bed
