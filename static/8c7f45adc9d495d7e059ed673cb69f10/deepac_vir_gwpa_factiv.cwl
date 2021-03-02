class: CommandLineTool
id: deepac_vir_gwpa_factiv.cwl
inputs:
- id: in_model
  doc: Model file (.h5)
  type: File?
  inputBinding:
    prefix: --model
- id: in_test_data
  doc: Test data (.npy)
  type: string?
  inputBinding:
    prefix: --test-data
- id: in_test_fast_a
  doc: Reads of the test data set (.fasta)
  type: string?
  inputBinding:
    prefix: --test-fasta
- id: in_out_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_inter_layer
  doc: Perform calculations for this intermediate layer
  type: string?
  inputBinding:
    prefix: --inter-layer
- id: in_seq_chunk
  doc: Sequence chunk size. Decrease for lower memory usage.
  type: long?
  inputBinding:
    prefix: --seq-chunk
- id: in_perform_calculations_only
  doc: "[INTER_NEURON [INTER_NEURON ...]], --inter-neuron [INTER_NEURON [INTER_NEURON\
    \ ...]]\nPerform calculations for this filter only\n"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gwp_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fact_iv
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacvir:0.2.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-vir
- gwpa
- factiv
