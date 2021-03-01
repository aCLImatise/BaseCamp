class: CommandLineTool
id: reports.py_plot_coverage.cwl
inputs:
- id: in_plot_format
  doc: "File format of the coverage plot. By default it is\ninferred from the file\
    \ extension of out_plot_file, but\nit can be set explicitly via --plotFormat.\
    \ Valid\nformats include: ps, jpg, rgba, jpeg, eps, png, raw,\ntif, tiff, svg,\
    \ pdf, svgz, pgf"
  type: boolean?
  inputBinding:
    prefix: --plotFormat
- id: in_plot_data_style
  doc: "The plot data display style. Valid options: filled,\nline, dots (default:\
    \ filled)"
  type: boolean?
  inputBinding:
    prefix: --plotDataStyle
- id: in_plotstyle
  doc: "The plot visual style. Valid options: fivethirtyeight,\nseaborn-talk, seaborn-ticks,\
    \ seaborn-deep,\ndark_background, seaborn-dark, seaborn-colorblind,\nseaborn-whitegrid,\
    \ seaborn-dark-palette, grayscale,\nseaborn-paper, seaborn-bright, classic, seaborn-muted,\n\
    seaborn-darkgrid, seaborn-notebook, seaborn-pastel,\nseaborn-white, bmh, ggplot,\
    \ seaborn-poster (default:\nggplot)"
  type: boolean?
  inputBinding:
    prefix: --plotStyle
- id: in_plot_width
  doc: 'Width of the plot in pixels (default: 1024)'
  type: long?
  inputBinding:
    prefix: --plotWidth
- id: in_plot_height
  doc: 'Width of the plot in pixels (default: 768)'
  type: long?
  inputBinding:
    prefix: --plotHeight
- id: in_plot_dpi
  doc: "dots per inch for rendered output, more useful for\nvector modes (default:\
    \ 80.0)"
  type: double?
  inputBinding:
    prefix: --plotDPI
- id: in_plot_title
  doc: "The title displayed on the coverage plot (default:\n'Coverage Plot')"
  type: string?
  inputBinding:
    prefix: --plotTitle
- id: in_minimum_base_quality
  doc: The minimum base quality threshold
  type: string?
  inputBinding:
    prefix: -q
- id: in_minimum_mapping_quality
  doc: The minimum mapping quality threshold
  type: string?
  inputBinding:
    prefix: -Q
- id: in_max_coverage_depth
  doc: 'The max coverage depth (default: 1000000)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_read_length_threshold
  doc: Read length threshold
  type: long?
  inputBinding:
    prefix: -l
- id: in_out_summary
  doc: "Coverage summary TSV file. Default is to write to\ntemp."
  type: File?
  inputBinding:
    prefix: --outSummary
- id: in_plot_only_non_duplicates
  doc: Plot only non-duplicates (samtools -F 1024)
  type: boolean?
  inputBinding:
    prefix: --plotOnlyNonDuplicates
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_bam
  doc: Input reads, BAM format.
  type: string
  inputBinding:
    position: 0
- id: in_out_plot_file
  doc: The generated chart file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- reports.py
- plot_coverage
