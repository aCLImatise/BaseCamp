class: CommandLineTool
id: ../../../checkm_dist_plot.cwl
inputs:
- id: image_type
  doc: 'desired image type (default: png)'
  type: string
  inputBinding:
    prefix: --image_type
- id: dpi
  doc: 'desired DPI of output image (default: 600)'
  type: string
  inputBinding:
    prefix: --dpi
- id: font_size
  doc: 'Desired font size (default: 8)'
  type: string
  inputBinding:
    prefix: --font_size
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: width
  doc: 'width of output image (default: 6.5)'
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: 'height of output image (default: 8)'
  type: string
  inputBinding:
    prefix: --height
- id: gc_window_size
  doc: 'window size used to calculate GC histogram (default: 5000)'
  type: string
  inputBinding:
    prefix: --gc_window_size
- id: td_window_size
  doc: 'window size used to calculate TD histogram (default: 5000)'
  type: string
  inputBinding:
    prefix: --td_window_size
- id: cd_window_size
  doc: 'window size used to calculate CD histogram (default: 10000)'
  type: string
  inputBinding:
    prefix: --cd_window_size
- id: gc_bin_width
  doc: 'width of GC bars in histogram (default: 0.01)'
  type: string
  inputBinding:
    prefix: --gc_bin_width
- id: td_bin_width
  doc: 'width of TD bars in histogram (default: 0.01)'
  type: string
  inputBinding:
    prefix: --td_bin_width
- id: cd_bin_width
  doc: 'width of CD bars in histogram (default: 0.01)'
  type: string
  inputBinding:
    prefix: --cd_bin_width
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: results_dir
  doc: directory specified during analyze command
  type: string
  inputBinding:
    position: 0
- id: bin_dir
  doc: directory containing bins to plot (fasta format)
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: directory to hold plots
  type: string
  inputBinding:
    position: 2
- id: tetra_profile
  doc: tetranucleotide profiles for each sequence (see tetra command)
  type: string
  inputBinding:
    position: 3
- id: dist_value
  doc: reference distribution(s) to plot; integer between 0 and 100
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- dist_plot
