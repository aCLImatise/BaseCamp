class: CommandLineTool
id: wgfast_genbankqc_species.cwl
inputs:
- id: in_unknowns
  doc: Maximum number of unknown bases (not A, T, C, G)
  type: long?
  inputBinding:
    prefix: --unknowns
- id: in_acceptable_deviations_median_number
  doc: Acceptable deviations from median number of
  type: double?
  inputBinding:
    prefix: --contigs
- id: in_distance
  doc: Acceptable deviations from median MASH distances
  type: double?
  inputBinding:
    prefix: --distance
- id: in_all
  doc: Acceptable deviations for all metrics
  type: double?
  inputBinding:
    prefix: --all
- id: in_metadata
  doc: Get metadata for genome at PATH
  type: boolean?
  inputBinding:
    prefix: --metadata
- id: in_processes
  doc: Number of processes
  type: long?
  inputBinding:
    prefix: --processes
- id: in_s__assemblysize
  doc: -s, --assembly_size FLOAT  Acceptable deviations from median assembly size
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wgfast_genbankqc
- species
