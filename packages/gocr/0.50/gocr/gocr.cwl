class: CommandLineTool
id: gocr.cwl
inputs:
- id: in_output_file_redirection
  doc: '- output file  (redirection of stdout)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_logging_file_redirection
  doc: '- logging file (redirection of stderr)'
  type: File?
  inputBinding:
    prefix: -e
- id: in_progress_output_see
  doc: '- progress output to fifo (see manual)'
  type: string?
  inputBinding:
    prefix: -x
- id: in_database_path_including
  doc: '- database path including final slash (default is ./db/)'
  type: File?
  inputBinding:
    prefix: -p
- id: in_output_format_iso
  doc: '- output format (ISO8859_1 TeX HTML XML UTF8 ASCII)'
  type: long?
  inputBinding:
    prefix: -f
- id: in_threshold_grey_level
  doc: '- threshold grey level 0<160<=255 (0 = autodetect)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_remove_small_clusters
  doc: '- dust_size (remove small clusters, -1 = autodetect)'
  type: long?
  inputBinding:
    prefix: -d
- id: in__spacewidthdots_autodetect
  doc: '- spacewidth/dots (0 = autodetect)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_verbose_see_manual
  doc: '- verbose (see manual page)'
  type: long?
  inputBinding:
    prefix: -v
- id: in_list_chars_debugging
  doc: '- list of chars (debugging, see manual)'
  type: string?
  inputBinding:
    prefix: -c
- id: in_char_filter_hexdigits
  doc: '- char filter (ex. hexdigits: 0-9A-Fx, only ASCII)'
  type: long?
  inputBinding:
    prefix: -C
- id: in_operation_modes_bitpattern
  doc: '- operation modes (bitpattern, see manual)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_value_certainty_default
  doc: '- value of certainty (in percent, 0..100, default=95)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_output_string_unrecognized
  doc: '- output this string for every unrecognized character'
  type: string?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_redirection
  doc: '- output file  (redirection of stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_redirection)
hints: []
cwlVersion: v1.1
baseCommand:
- gocr
