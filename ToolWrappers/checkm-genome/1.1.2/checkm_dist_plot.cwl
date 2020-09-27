class: CommandLineTool
id: checkm_dist_plot.cwl
inputs:
- id: in_image_type
  doc: 'desired image type (default: png)'
  type: string
  inputBinding:
    prefix: --image_type
- id: in_dpi
  doc: 'desired DPI of output image (default: 600)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_font_size
  doc: 'Desired font size (default: 8)'
  type: long
  inputBinding:
    prefix: --font_size
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory
  inputBinding:
    prefix: --extension
- id: in_width
  doc: 'width of output image (default: 6.5)'
  type: double
  inputBinding:
    prefix: --width
- id: in_height
  doc: 'height of output image (default: 8)'
  type: long
  inputBinding:
    prefix: --height
- id: in_gc_window_size
  doc: 'window size used to calculate GC histogram (default: 5000)'
  type: long
  inputBinding:
    prefix: --gc_window_size
- id: in_td_window_size
  doc: 'window size used to calculate TD histogram (default: 5000)'
  type: long
  inputBinding:
    prefix: --td_window_size
- id: in_cd_window_size
  doc: 'window size used to calculate CD histogram (default: 10000)'
  type: long
  inputBinding:
    prefix: --cd_window_size
- id: in_gc_bin_width
  doc: 'width of GC bars in histogram (default: 0.01)'
  type: double
  inputBinding:
    prefix: --gc_bin_width
- id: in_td_bin_width
  doc: 'width of TD bars in histogram (default: 0.01)'
  type: double
  inputBinding:
    prefix: --td_bin_width
- id: in_cd_bin_width
  doc: 'width of CD bars in histogram (default: 0.01)'
  type: double
  inputBinding:
    prefix: --cd_bin_width
- id: in_quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_results_dir
  doc: directory specified during analyze command
  type: string
  inputBinding:
    position: 0
- id: in_bin_dir
  doc: directory containing bins to plot (fasta format)
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: directory to hold plots
  type: string
  inputBinding:
    position: 2
- id: in_tetra_profile
  doc: tetranucleotide profiles for each sequence (see tetra command)
  type: string
  inputBinding:
    position: 3
- id: in_dist_value
  doc: reference distribution(s) to plot; integer between 0 and 100
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkm
- dist_plot
