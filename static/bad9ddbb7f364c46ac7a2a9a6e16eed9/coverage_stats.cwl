class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coverage_stats.cwl
inputs:
- id: name_hxb_
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: string
  inputBinding:
    prefix: -t
- id: input_sambam_file
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
- id: output_tsv_file
  doc: Output TSV file
  type: string
  inputBinding:
    prefix: -o
- id: msa_of_contigs
  doc: MSA of contigs
  type: string
  inputBinding:
    prefix: -m
- id: select
  doc: Name of contig that is of interest
  type: string
  inputBinding:
    prefix: --select
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage_stats
