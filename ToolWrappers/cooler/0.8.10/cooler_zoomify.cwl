class: CommandLineTool
id: cooler_zoomify.cwl
inputs:
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
- id: in_resolutions
  doc: "Comma-separated list of target resolutions. Use\nsuffixes B or N to specify\
    \ a progression: B for\nbinary (geometric steps of factor 2), N for nice\n(geometric\
    \ steps of factor 10 interleaved with\nsteps of 2 and 5). Examples:\n1000B=1000,2000,4000,8000,...\n\
    1000N=1000,2000,5000,10000,...\n5000N=5000,10000,25000,50000,... 4DN is an alias\n\
    for 1000,2000,5000N [default: B]"
  type: long?
  inputBinding:
    prefix: --resolutions
- id: in_balance
  doc: Apply balancing to each zoom level. Off by default.
  type: boolean?
  inputBinding:
    prefix: --balance
- id: in_balance_args
  doc: Additional arguments to pass to cooler balance
  type: string?
  inputBinding:
    prefix: --balance-args
- id: in_base_uri
  doc: "One or more additional base coolers to aggregate\nfrom, if needed."
  type: string?
  inputBinding:
    prefix: --base-uri
- id: in_out
  doc: Output file or URI
  type: File?
  inputBinding:
    prefix: --out
- id: in_field
  doc: "Specify the names of value columns to merge as\n'<name>'. Repeat the `--field`\
    \ option for each one.\nUse '<name>:dtype=<dtype>' to specify the dtype.\nInclude\
    \ ',agg=<agg>' to specify an aggregation\nfunction different from 'sum'."
  type: string?
  inputBinding:
    prefix: --field
- id: in_legacy
  doc: Use the legacy layout of integer-labeled zoom
  type: boolean?
  inputBinding:
    prefix: --legacy
- id: in_levels_dot
  doc: -h, --help               Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file or URI
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- zoomify
