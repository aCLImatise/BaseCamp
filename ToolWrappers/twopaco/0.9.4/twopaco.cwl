class: CommandLineTool
id: twopaco.cwl
inputs:
- id: in_filter_size
  doc: "(OR required)  Size of the filter\n-- OR --"
  type: long?
  inputBinding:
    prefix: --filtersize
- id: in_filter_memory
  doc: (OR required)  Memory in GBs allocated for the filter
  type: double?
  inputBinding:
    prefix: --filtermemory
- id: in_outfile
  doc: Output file name prefix
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_test
  doc: Run tests
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_tmpdir
  doc: Temporary directory name
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_abundance
  doc: Vertex abundance threshold
  type: long?
  inputBinding:
    prefix: --abundance
- id: in_threads
  doc: Number of worker threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_rounds
  doc: Number of computation rounds
  type: long?
  inputBinding:
    prefix: --rounds
- id: in_has_hf_number
  doc: Number of hash functions
  type: long?
  inputBinding:
    prefix: --hashfnumber
- id: in_k_value
  doc: Value of k
  type: string?
  inputBinding:
    prefix: --kvalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file name prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/twopaco:0.9.4--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- twopaco
