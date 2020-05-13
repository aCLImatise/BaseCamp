class: CommandLineTool
id: pauvre_browser.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: chromosome_id
  doc: The fasta sequence to observe. Use the header name of the fasta file without
    the '>' character
  type: string
  inputBinding:
    prefix: --chromosomeid
- id: dpi
  doc: Change the dpi from the default 600 if you need it higher
  type: string
  inputBinding:
    prefix: --dpi
- id: file_form
  doc: Which output format would you like? Def.=png
  type: string[]
  inputBinding:
    prefix: --fileform
- id: no_timestamp
  doc: Turn off time stamps in the filename output.
  type: boolean
  inputBinding:
    prefix: --no_timestamp
- id: output_base_name
  doc: Specify a base name for the output file( s). The input file base name is the
    default.
  type: string
  inputBinding:
    prefix: --output-base-name
- id: path
  doc: Set an explicit filepath for the output. Only do this if you have selected
    one output type.
  type: File
  inputBinding:
    prefix: --path
- id: plot_commands
  doc: 'Write strings here to select what to plot. The format for each track is: <type>:<path>:<style>:<options>
    To plot the reference, the format is: ref:<style>:<options> Surround each track
    string with double quotes and a space between subsequent strings. "bam:mybam.bam:depth"
    "ref:colorful"'
  type: string[]
  inputBinding:
    prefix: --plot_commands
- id: ratio
  doc: 'Enter the dimensions (arbitrary units) to plot the figure. For example a figure
    that is seven times wider than tall is: --ratio 7 1'
  type: string[]
  inputBinding:
    prefix: --ratio
- id: reference
  doc: The reference fasta file.
  type: string
  inputBinding:
    prefix: --reference
- id: start
  doc: The start position to observe on the fasta file. Uses 1-based indexing.
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: The stop position to observe on the fasta file. Uses 1-based indexing.
  type: string
  inputBinding:
    prefix: --stop
- id: transparent
  doc: Specify this option if you DON'T want a transparent background. Default is
    on.
  type: boolean
  inputBinding:
    prefix: --transparent
outputs: []
cwlVersion: v1.1
baseCommand:
- pauvre
- browser
