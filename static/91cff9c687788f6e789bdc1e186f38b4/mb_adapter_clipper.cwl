class: CommandLineTool
id: mb_adapter_clipper.cwl
inputs:
- id: input_fast_q
  doc: path to input fastq
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: path to output fastq
  type: string
  inputBinding:
    position: 1
- id: prime_5_adapter
  doc: 5' adapter sequence
  type: string
  inputBinding:
    position: 2
- id: prime_3_adapter
  doc: 3' adapter sequence
  type: string
  inputBinding:
    position: 3
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
- id: nt_barcode_5_prime
  doc: size of the 5' barcode (in bp)
  type: string
  inputBinding:
    prefix: --nt_barcode_5prime
- id: nt_barcode_3_prime
  doc: size of the 3' barcode (in bp)
  type: string
  inputBinding:
    prefix: --nt_barcode_3prime
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: clipped_5_prime_bc
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
