class: CommandLineTool
id: checkm_gc_plot.cwl
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
  doc: 'height of output image (default: 3.5)'
  type: double?
  inputBinding:
    prefix: --height
- id: in_gc_window_size
  doc: 'window size used to calculate GC histogram (default: 5000)'
  type: long?
  inputBinding:
    prefix: --gc_window_size
- id: in_gc_bin_width
  doc: 'width of GC bars in histogram (default: 0.01)'
  type: double?
  inputBinding:
    prefix: --gc_bin_width
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
- id: in_dist_value
  doc: reference distribution(s) to plot; integer between 0 and 100
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkm
- gc_plot
