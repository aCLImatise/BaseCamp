class: CommandLineTool
id: ../../../mb_adapter_clipper.cwl
inputs:
- id: in_clip_len
  doc: partial adapter size required for clipping (in bp)
  type: long
  inputBinding:
    prefix: --clip_len
- id: in_min_len
  doc: minimum read size required after clipping
  type: long
  inputBinding:
    prefix: --min_len
- id: in_nt_barcode_five_prime
  doc: size of the 5' barcode (in bp)
  type: long
  inputBinding:
    prefix: --nt_barcode_5prime
- id: in_nt_barcode_three_prime
  doc: size of the 3' barcode (in bp)
  type: long
  inputBinding:
    prefix: --nt_barcode_3prime
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_clipped_five_prime_bc
  doc: 5prime barcode already clipped
  type: boolean
  inputBinding:
    prefix: --clipped_5prime_bc
- id: in_plot_dir
  doc: output directory for supplementary plots
  type: Directory
  inputBinding:
    prefix: --plot_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_dir
  doc: output directory for supplementary plots
  type: Directory
  outputBinding:
    glob: $(inputs.in_plot_dir)
cwlVersion: v1.1
baseCommand:
- mb-adapter-clipper
