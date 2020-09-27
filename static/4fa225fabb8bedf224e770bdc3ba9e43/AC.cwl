class: CommandLineTool
id: AC.cwl
inputs:
- id: in_show_compression_levels
  doc: show AC compression levels,
  type: boolean
  inputBinding:
    prefix: -s
- id: in_verbose_mode_information
  doc: verbose mode (more information),
  type: boolean
  inputBinding:
    prefix: -v
- id: in_display_version_number
  doc: display version number,
  type: boolean
  inputBinding:
    prefix: -V
- id: in_force_overwrite_output
  doc: force overwrite of output,
  type: boolean
  inputBinding:
    prefix: -f
- id: in_level_compression_lazy
  doc: level of compression [1;7] (lazy -tm setup),
  type: long
  inputBinding:
    prefix: -l
- id: in_threshold_frequency_discard
  doc: threshold frequency to discard from alphabet,
  type: string
  inputBinding:
    prefix: -t
- id: in_it_creates_file
  doc: "it creates a file with the extension \".iae\"\nwith the respective information\
    \ content."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_reference_file_loaded
  doc: reference file ("-rm" are loaded here),
  type: File
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AC
