class: CommandLineTool
id: sketchy_online_simulate.cwl
inputs:
- id: fast_x
  doc: Path to Fast{a,q} file to simulate run [required]  [required]
  type: File
  inputBinding:
    prefix: --fastx
- id: index
  doc: Path to Fast{a,q} index file from previous simulation [none]
  type: File
  inputBinding:
    prefix: --index
- id: outdir
  doc: Output directory for run simulation [run_sim]
  type: File
  inputBinding:
    prefix: --outdir
- id: reads_per_file
  doc: Number of reads per Fast{a,q} to simulate live basecalling [4000]
  type: long
  inputBinding:
    prefix: --reads_per_file
- id: barcodes
  doc: Barcode integers, comma-separated e.g. 1,2,3,4 [None]
  type: string
  inputBinding:
    prefix: --barcodes
- id: speed_up
  doc: Speed up the simulation by this factor [1.0]
  type: double
  inputBinding:
    prefix: --speedup
- id: start_time_regex
  doc: Read start time regex to parse from read headers.
  type: string
  inputBinding:
    prefix: --start_time_regex
- id: barcode_regex
  doc: Barcode regex to parse from read headers.
  type: string
  inputBinding:
    prefix: --barcode_regex
- id: test
  doc: Run simple test mode; see docs [false]
  type: string
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- simulate
