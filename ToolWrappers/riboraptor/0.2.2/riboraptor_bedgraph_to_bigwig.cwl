class: CommandLineTool
id: riboraptor_bedgraph_to_bigwig.cwl
inputs:
- id: in_bed_graph
  doc: Path to bedgraph file (optional)
  type: File
  inputBinding:
    prefix: --bedgraph
- id: in_sizes
  doc: Path to genome chrom.sizes file  [required]
  type: File
  inputBinding:
    prefix: --sizes
- id: in_save_to
  doc: Path to write bigwig output  [required]
  type: File
  inputBinding:
    prefix: --saveto
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: Path to write bigwig output  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_save_to)
cwlVersion: v1.1
baseCommand:
- riboraptor
- bedgraph-to-bigwig
