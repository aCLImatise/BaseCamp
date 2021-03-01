class: CommandLineTool
id: pauvre_browser.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_chromosome_id
  doc: "The fasta sequence to observe. Use the header name of\nthe fasta file without\
    \ the '>' character"
  type: File?
  inputBinding:
    prefix: --chromosomeid
- id: in_dpi
  doc: Change the dpi from the default 600 if you need it
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  inputBinding:
    prefix: --no_timestamp
- id: in_output_base_name
  doc: "Specify a base name for the output file( s). The input\nfile base name is\
    \ the default."
  type: File?
  inputBinding:
    prefix: --output-base-name
- id: in_path
  doc: "Set an explicit filepath for the output. Only do this\nif you have selected\
    \ one output type."
  type: File?
  inputBinding:
    prefix: --path
- id: in_plot_commands
  doc: "Write strings here to select what to plot. The format\nfor each track is:\
    \ <type>:<path>:<style>:<options> To\nplot the reference, the format is:\nref:<style>:<options>\
    \ Surround each track string with\ndouble quotes and a space between subsequent\
    \ strings.\n\"bam:mybam.bam:depth\" \"ref:colorful\""
  type: string[]
  inputBinding:
    prefix: --plot_commands
- id: in_ratio
  doc: "Enter the dimensions (arbitrary units) to plot the\nfigure. For example a\
    \ figure that is seven times wider\nthan tall is: --ratio 7 1"
  type: string[]
  inputBinding:
    prefix: --ratio
- id: in_reference
  doc: The reference fasta file.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_start
  doc: "The start position to observe on the fasta file. Uses\n1-based indexing."
  type: File?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: "The stop position to observe on the fasta file. Uses\n1-based indexing."
  type: File?
  inputBinding:
    prefix: --stop
- id: in_transparent
  doc: "Specify this option if you DON'T want a transparent\nbackground. Default is\
    \ on.\n"
  type: boolean?
  inputBinding:
    prefix: --transparent
- id: in_higher
  doc: --fileform STRING [STRING ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_timestamp)
- id: out_path
  doc: "Set an explicit filepath for the output. Only do this\nif you have selected\
    \ one output type."
  type: File?
  outputBinding:
    glob: $(inputs.in_path)
hints: []
cwlVersion: v1.1
baseCommand:
- pauvre
- browser
