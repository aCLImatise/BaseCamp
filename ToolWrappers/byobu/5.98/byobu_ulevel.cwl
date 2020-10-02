class: CommandLineTool
id: byobu_ulevel.cwl
inputs:
- id: in_accessibility_mode_enabled
  doc: ": Accessibility mode: only output ASCII.\n(Also enabled if variable 'BYOBU_A11Y'\
    \ set)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_display_current_value
  doc: ": Display current value as space if zero, rather than lowest\n'value' of theme."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_current_value_indicator
  doc: ': Current value of your indicator.'
  type: long
  inputBinding:
    prefix: -c
- id: in_enable_debug_output
  doc: ': Enable debug output.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_number_decimal_use
  doc: ": Number of decimal places to use for accessibility mode\n(default=2)."
  type: long
  inputBinding:
    prefix: -e
- id: in_invert_colour_scheme
  doc: ': Invert colour scheme (rating themes only).'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_list_available_themes
  doc: ": List available themes. If '-t' also specified,\nshow all values for specified\
    \ theme."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_minimum_value_default
  doc: ': Minimum value (default=0).'
  type: long
  inputBinding:
    prefix: -m
- id: in_supress_output_newline
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_permissive_mode_current
  doc: ": Permissive mode - if current value out of bounds, set it\nto the nearest\
    \ bound (min or max)."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_suppress_messages_requires
  doc: ": Suppress messages (requires '-t')."
  type: boolean
  inputBinding:
    prefix: -q
- id: in_reverse_display_rating
  doc: ": Reverse 'direction' of display (rating theme only)."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_name_theme_defaultvbars
  doc: ': Name of theme (default=vbars_8).'
  type: long
  inputBinding:
    prefix: -t
- id: in_specify_user_values
  doc: ': Specify a user theme (2 or more values).'
  type: long
  inputBinding:
    prefix: -u
- id: in_width_rating_default
  doc: ': Width of rating theme (default=5).'
  type: long
  inputBinding:
    prefix: -w
- id: in_maximum_value_default
  doc: ': Maximum value (default=100).'
  type: long
  inputBinding:
    prefix: -x
- id: in_number_dot
  doc: "- The final '_<number>' in a theme name denotes the number of glyphs"
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-ulevel
