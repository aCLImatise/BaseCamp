class: CommandLineTool
id: kwip.cwl
inputs:
- id: in_threads
  doc: Number of threads to utilise. [default N_CPUS]
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_kernel
  doc: Output file for the kernel matrix. [default None]
  type: File
  inputBinding:
    prefix: --kernel
- id: in_distance
  doc: Output file for the distance matrix. [default stdout]
  type: File
  inputBinding:
    prefix: --distance
- id: in_unweighted
  doc: Use the unweighted inner proudct kernel. [default off]
  type: boolean
  inputBinding:
    prefix: --unweighted
- id: in_weights
  doc: Bin weight vector file (input, or output w/ -C).
  type: boolean
  inputBinding:
    prefix: --weights
- id: in_calc_weights
  doc: Calculate only the bin weight vector, not kernel matrix.
  type: boolean
  inputBinding:
    prefix: --calc-weights
- id: in_verbose
  doc: Increase verbosity. May or may not acutally do anything.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Execute silently but for errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_hashes
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_kernel
  doc: Output file for the kernel matrix. [default None]
  type: File
  outputBinding:
    glob: $(inputs.in_kernel)
- id: out_distance
  doc: Output file for the distance matrix. [default stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_distance)
cwlVersion: v1.1
baseCommand:
- kwip
