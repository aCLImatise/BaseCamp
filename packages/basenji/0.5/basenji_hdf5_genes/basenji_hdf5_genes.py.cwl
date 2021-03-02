class: CommandLineTool
id: basenji_hdf5_genes.py.cwl
inputs:
- id: in_chromosome_lengths_file
  doc: 'Chromosome lengths file [Default: none]'
  type: File?
  inputBinding:
    prefix: -g
- id: in_sequence_length
  doc: 'Sequence length [Default: 1024]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_center_proportion_required
  doc: "Center proportion in which TSSs are required to be\n[Default: 0.333]"
  type: double?
  inputBinding:
    prefix: -c
- id: in_number_parallel_processes
  doc: 'Number parallel processes to load data [Default: 1]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_store_target_values
  doc: Store target values, extracted from this list of WIG
  type: File?
  inputBinding:
    prefix: -t
- id: in_w_five
  doc: "Coverage files are w5 rather than BigWig [Default:\nFalse]\n"
  type: boolean?
  inputBinding:
    prefix: --w5
- id: in_files
  doc: '-w POOL_WIDTH        Average pooling width [Default: 1]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_hdf5_genes.py
