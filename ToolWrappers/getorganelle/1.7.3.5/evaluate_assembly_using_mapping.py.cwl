class: CommandLineTool
id: evaluate_assembly_using_mapping.py.cwl
inputs:
- id: in_input_assembly_fasta
  doc: input assembly fasta file.
  type: File?
  inputBinding:
    prefix: -f
- id: in_input_files_unpaired
  doc: "Input file(s) with unpaired (single-end) reads to be\nadded to the pool. files\
    \ could be comma-separated\nlists such as 'seq1,seq2'."
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_max_lib_len
  doc: "Corresponding to '-X' option in Bowtie2. Default:\n1200."
  type: long?
  inputBinding:
    prefix: --max-lib-len
- id: in_yesnoauto_input_fasta
  doc: "(yes/no/auto) input fasta is circular. If auto was\nchosen, the input fasta\
    \ would be treated as circular\nwhen the sequence name ends with '(circular)'.\n\
    Default: auto"
  type: string?
  inputBinding:
    prefix: -c
- id: in_output_folder
  doc: output folder.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_threads
  doc: threads.
  type: string?
  inputBinding:
    prefix: -t
- id: in_continue
  doc: 'Seed for random number generator. Default: 12345'
  type: long?
  inputBinding:
    prefix: --continue
- id: in_draw
  doc: Draw density plot using matplotlib, which should be
  type: boolean?
  inputBinding:
    prefix: --draw
- id: in_plot_title
  doc: 'Default: `the file name of the input fasta`'
  type: File?
  inputBinding:
    prefix: --plot-title
- id: in_plot_subtitle
  doc: 'A 4-space indicates a line break. Default: None'
  type: long?
  inputBinding:
    prefix: --plot-subtitle
- id: in_plot_transparent
  doc: 'Default: False'
  type: boolean?
  inputBinding:
    prefix: --plot-transparent
- id: in_plot_x_density
  doc: 'Default: 12000.0'
  type: double?
  inputBinding:
    prefix: --plot-x-density
- id: in_plot_x_gap_dots
  doc: "Number of sites added in-between isolated contigs.\nDefault: 3000"
  type: long?
  inputBinding:
    prefix: --plot-x-gap-dots
- id: in_plot_figure_height
  doc: 'Default: 5.0'
  type: double?
  inputBinding:
    prefix: --plot-figure-height
- id: in_plot_y_lim
  doc: Y axis value limit.
  type: string?
  inputBinding:
    prefix: --plot-y-lim
- id: in_plot_font
  doc: "For plot of unicode characters in some environments.\nUse 'Times New Roman','Arial'\
    \ etc. Default: none."
  type: string?
  inputBinding:
    prefix: --plot-font
- id: in_disable_customized_error_rate
  doc: "Assign the path to Bowtie2 binary files if not added\nto the path. Default:\
    \ try\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
  type: long?
  inputBinding:
    prefix: --disable-customized-error-rate
- id: in_bowtie_two_mode
  doc: 'Default: --sensitive'
  type: long?
  inputBinding:
    prefix: --bowtie2-mode
- id: in_bowtie_two_options
  doc: 'Default: --no-discordant --dovetail'
  type: long?
  inputBinding:
    prefix: --bowtie2-options
- id: in_stat_mode
  doc: "Statistical mode for counting multiple hits of a\nsingle read: best/all. The\
    \ all mode is meaningful only\nwhen '-k <INT>' was included in '--bowtie2-options'.\n\
    Default: best"
  type: long?
  inputBinding:
    prefix: --stat-mode
- id: in_debug
  doc: Turn on debug mode.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_installed_dot
  doc: --plot-format=PLOT_FORMAT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: output folder.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- evaluate_assembly_using_mapping.py
