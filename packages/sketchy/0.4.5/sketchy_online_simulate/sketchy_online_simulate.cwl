class: CommandLineTool
id: sketchy_online_simulate.cwl
inputs:
- id: in_fast_x
  doc: "Path to Fast{a,q} file to simulate run\n[required]  [required]"
  type: File?
  inputBinding:
    prefix: --fastx
- id: in_index
  doc: "Path to Fast{a,q} index file from previous\nsimulation [none]"
  type: File?
  inputBinding:
    prefix: --index
- id: in_outdir
  doc: Output directory for run simulation [run_sim]
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_reads_per_file
  doc: "Number of reads per Fast{a,q} to simulate live\nbasecalling [4000]"
  type: long?
  inputBinding:
    prefix: --reads_per_file
- id: in_barcodes
  doc: "Barcode integers, comma-separated e.g. 1,2,3,4\n[None]"
  type: long?
  inputBinding:
    prefix: --barcodes
- id: in_speed_up
  doc: Speed up the simulation by this factor [1.0]
  type: double?
  inputBinding:
    prefix: --speedup
- id: in_start_time_regex
  doc: Read start time regex to parse from read
  type: string?
  inputBinding:
    prefix: --start_time_regex
- id: in_test
  doc: Run simple test mode; see docs [false]
  type: string?
  inputBinding:
    prefix: --test
- id: in_headers_dot
  doc: --barcode_regex TEXT          Barcode regex to parse from read headers.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory for run simulation [run_sim]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- simulate
