class: CommandLineTool
id: ../../../deepac_vir.cwl
inputs:
- id: in_debug_no_eager
  doc: Disable eager mode.
  type: boolean
  inputBinding:
    prefix: --debug-no-eager
- id: in_debug_tf
  doc: "Set tensorflow debug info verbosity level. 0 = max, 3\n= min. Default: 2 (errors);\
    \ 3 for tests (muted)"
  type: long
  inputBinding:
    prefix: --debug-tf
- id: in_debug_device
  doc: Enable verbose device placement information.
  type: boolean
  inputBinding:
    prefix: --debug-device
- id: in_force_cpu
  doc: Use a CPU even if GPUs are available.
  type: boolean
  inputBinding:
    prefix: --force-cpu
- id: in_tpu
  doc: "TPU name: 'colab' for Google Colab, or name of your\nTPU on GCE.\n"
  type: string
  inputBinding:
    prefix: --tpu
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac-vir
