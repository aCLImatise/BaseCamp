class: CommandLineTool
id: genomedata_histogram.cwl
inputs:
- id: in_include_coords
  doc: limit summary to genomic coordinates in FILE
  type: File?
  inputBinding:
    prefix: --include-coords
- id: in_num_bins
  doc: "use BINS bins\n"
  type: long?
  inputBinding:
    prefix: --num-bins
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: in_track_name
  doc: track name
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0
cwlVersion: v1.1
baseCommand:
- genomedata-histogram
