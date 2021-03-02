class: CommandLineTool
id: integron_split.cwl
inputs:
- id: in_chunk
  doc: "The number of files generate. Each chunks will\ncontains n replicon where\
    \ n = number of replicon in\nthe input file / chunk.The n may vary in some chunks\n\
    because some replicon can be skip if they contains\nillegal characters or are\
    \ too short (<50bp)"
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_outdir
  doc: "The path to the directory where to write the chunks.\nIt must exists."
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_mute
  doc: "mute the log on stdout.(continue to log on\nintegron_split.out)"
  type: boolean?
  inputBinding:
    prefix: --mute
- id: in_verbose
  doc: 'Increase verbosity of output (can be cumulative : -vv)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'Decrease verbosity of output (can be cumulative : -qq)'
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/integron_finder:2.0rc6--py_0
cwlVersion: v1.1
baseCommand:
- integron_split
