class: CommandLineTool
id: checkm_len_hist.cwl
inputs:
- id: in_image_type
  doc: 'desired image type (default: png)'
  type: string?
  inputBinding:
    prefix: --image_type
- id: in_dpi
  doc: 'desired DPI of output image (default: 600)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_font_size
  doc: 'Desired font size (default: 8)'
  type: long?
  inputBinding:
    prefix: --font_size
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_width
  doc: 'width of output image (default: 6.5)'
  type: double?
  inputBinding:
    prefix: --width
- id: in_height
  doc: 'height of output image (default: 6.5)'
  type: double?
  inputBinding:
    prefix: --height
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bin_dir
  doc: directory containing bins to plot (fasta format)
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: directory to hold plots
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- len_hist
