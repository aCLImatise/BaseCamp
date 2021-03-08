class: CommandLineTool
id: MethylDackel_format..cwl
inputs:
- id: in_m_bias
  doc: "Determine the position-dependent methylation bias in a dataset,\nproducing\
    \ diagnostic SVG images."
  type: string
  inputBinding:
    position: 0
- id: in_extract
  doc: Extract methylation metrics from an alignment file in BAM/CRAM
  type: string
  inputBinding:
    position: 1
- id: in_format_dot
  doc: mergeContext   Combine single Cytosine metrics from 'MethylDackel extract'
    into
  type: string
  inputBinding:
    position: 2
- id: in_per_read
  doc: Generate a per-read methylation summary.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/methyldackel:0.5.2--h7435645_0
cwlVersion: v1.1
baseCommand:
- MethylDackel
- format.
