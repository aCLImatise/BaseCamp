class: CommandLineTool
id: epic_merge.cwl
inputs:
- id: matrixes
  doc: epic-count matrixes to merge.
  type: string[]
  inputBinding:
    prefix: --matrixes
- id: regions
  doc: Bed file(s) with regions to use. Does not work with --keep-nonenriched.
  type: string[]
  inputBinding:
    prefix: --regions
- id: keep_non_enriched
  doc: Keep non-enriched bins also (takes much more time/mem). Not usable with --regions.
  type: boolean
  inputBinding:
    prefix: --keep-nonenriched
- id: enriched_per_file
  doc: Keep a column of enrichment info per matrix used.
  type: boolean
  inputBinding:
    prefix: --enriched-per-file
- id: output
  doc: Path to write gzipped output matrix.
  type: string
  inputBinding:
    prefix: --output
- id: number_cores
  doc: 'Number of cpus to use. Can use at most one per chromosome. Default: 1.'
  type: string
  inputBinding:
    prefix: --number-cores
outputs: []
cwlVersion: v1.1
baseCommand:
- epic-merge
