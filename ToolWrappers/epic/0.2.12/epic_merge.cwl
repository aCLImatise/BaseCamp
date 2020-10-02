class: CommandLineTool
id: epic_merge.cwl
inputs:
- id: in_matrixes
  doc: epic-count matrixes to merge.
  type: string[]
  inputBinding:
    prefix: --matrixes
- id: in_regions
  doc: "Bed file(s) with regions to use. Does not work with\n--keep-nonenriched."
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_keep_non_enriched
  doc: "Keep non-enriched bins also (takes much more\ntime/mem). Not usable with --regions."
  type: boolean
  inputBinding:
    prefix: --keep-nonenriched
- id: in_enriched_per_file
  doc: Keep a column of enrichment info per matrix used.
  type: boolean
  inputBinding:
    prefix: --enriched-per-file
- id: in_output
  doc: Path to write gzipped output matrix.
  type: File
  inputBinding:
    prefix: --output
- id: in_number_cores
  doc: "Number of cpus to use. Can use at most one per\nchromosome. Default: 1.\n"
  type: long
  inputBinding:
    prefix: --number-cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to write gzipped output matrix.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- epic-merge
