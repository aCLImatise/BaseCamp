class: CommandLineTool
id: phyluce_probe_get_clusters_from_bed.cwl
inputs:
- id: bed
  doc: The BED directory you want to search for clusters
  type: string
  inputBinding:
    prefix: --bed
- id: outdir
  doc: The output directory to store results
  type: string
  inputBinding:
    prefix: --outdir
- id: files
  doc: Specific files in the directory you want to process
  type: File[]
  inputBinding:
    prefix: --files
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_clusters_from_bed
