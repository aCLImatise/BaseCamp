class: CommandLineTool
id: magpurify_gc_content_out_out.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: cut_off
  doc: 'Cutoff (default: 15.75)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: weighted_mean
  doc: 'Compute the mean weighted by the contig length (default: False)'
  type: boolean
  inputBinding:
    prefix: --weighted-mean
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- gc-content
- out
- out
