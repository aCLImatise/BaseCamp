class: CommandLineTool
id: metawrap_quant_bins.cwl
inputs:
- id: b
  doc: folder containing draft genomes (bins) in fasta format
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: fasta file with entire metagenomic assembly (strongly recommended!)
  type: string
  inputBinding:
    prefix: -a
- id: t
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- metawrap
- quant_bins
