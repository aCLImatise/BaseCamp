class: CommandLineTool
id: gtf_to_sam.cwl
inputs:
- id: in_r_slash_reference_seq
  doc: 'reference fasta file                     [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -r/--reference-seq
- id: in_f_slash_raw_fp_km
  doc: use FPKM instead of isoform fraction
  type: boolean
  inputBinding:
    prefix: -F/--raw-fpkm
- id: in_cufflinks
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gtf_to_sam
