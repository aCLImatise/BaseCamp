class: CommandLineTool
id: cooler_coarsen.cwl
inputs:
- id: in_factor
  doc: "Gridding factor. The contact matrix is\ncoarsegrained by grouping each chromosomal\
    \ contact\nblock into k-by-k element tiles  [default: 2]"
  type: long?
  inputBinding:
    prefix: --factor
- id: in_nproc
  doc: "Number of processes to use for batch processing\nchunks of pixels [default:\
    \ 1, i.e. no process pool]"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_chunksize
  doc: "Number of pixels allocated to each process\n[default: 10000000]"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_field
  doc: "Specify the names of value columns to merge as\n'<name>'. Repeat the `--field`\
    \ option for each one.\nUse '<name>,dtype=<dtype>' to specify the dtype.\nInclude\
    \ ',agg=<agg>' to specify an aggregation\nfunction different from 'sum'."
  type: string?
  inputBinding:
    prefix: --field
- id: in_out
  doc: Output file or URI  [required]
  type: File?
  inputBinding:
    prefix: --out
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file or URI  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- coarsen
