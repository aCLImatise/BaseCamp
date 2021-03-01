class: CommandLineTool
id: erb.cwl
inputs:
- id: in_print_ruby_script
  doc: print ruby script
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_print_ruby_script_line
  doc: print ruby script with line number
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_enable_verbose_mode
  doc: enable verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_debug_true
  doc: set $DEBUG to true
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_load_a_library
  doc: load a library
  type: string?
  inputBinding:
    prefix: -r
- id: in_set_safe_
  doc: set $SAFE (0..3)
  type: double?
  inputBinding:
    prefix: -S
- id: in_set_default_encodings
  doc: '[:in]       set default external/internal encodings'
  type: string?
  inputBinding:
    prefix: -E
- id: in_set_default_encoding
  doc: set default encoding to UTF-8.
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_specify_trimmode_
  doc: specify trim_mode (0..2, -)
  type: double?
  inputBinding:
    prefix: -T
- id: in_ignore_lines_start
  doc: ignore lines which start with "%"
  type: boolean?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- erb
