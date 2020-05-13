class: CommandLineTool
id: best_blast_hits.cwl
inputs:
- id: in_file
  doc: Input file to process
  type: string
  inputBinding:
    prefix: --infile
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: min_overlap
  doc: Minimum bp overlap
  type: long
  inputBinding:
    prefix: --min_overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- best_blast_hits
