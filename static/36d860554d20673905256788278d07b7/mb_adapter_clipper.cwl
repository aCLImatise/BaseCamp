class: CommandLineTool
id: ../../../mb_adapter_clipper.cwl
inputs:
- id: clip_len
  doc: partial adapter size required for clipping (in bp)
  type: string
  inputBinding:
    prefix: --clip_len
- id: min_len
  doc: minimum read size required after clipping
  type: long
  inputBinding:
    prefix: --min_len
- id: nt_barcode_five_prime
  doc: size of the 5' barcode (in bp)
  type: string
  inputBinding:
    prefix: --nt_barcode_5prime
- id: nt_barcode_three_prime
  doc: size of the 3' barcode (in bp)
  type: string
  inputBinding:
    prefix: --nt_barcode_3prime
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: clipped_five_prime_bc
  doc: 5prime barcode already clipped
  type: boolean
  inputBinding:
    prefix: --clipped_5prime_bc
- id: plot_dir
  doc: output directory for supplementary plots
  type: string
  inputBinding:
    prefix: --plot_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-adapter-clipper
