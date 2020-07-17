class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/byobu_ulevel.cwl
inputs:
- id: accessibility_mode_only
  doc: ": Accessibility mode: only output ASCII. (Also enabled if variable 'BYOBU_A11Y'\
    \ set)."
  type: boolean
  inputBinding:
    prefix: -a
- id: display_current_value
  doc: ": Display current value as space if zero, rather than lowest 'value' of theme."
  type: boolean
  inputBinding:
    prefix: -b
- id: current_value_indicator
  doc: ': Current value of your indicator.'
  type: string
  inputBinding:
    prefix: -c
- id: enable_debug_output
  doc: ': Enable debug output.'
  type: boolean
  inputBinding:
    prefix: -d
- id: number_decimal_use
  doc: ': Number of decimal places to use for accessibility mode (default=2).'
  type: long
  inputBinding:
    prefix: -e
- id: invert_colour_scheme
  doc: ': Invert colour scheme (rating themes only).'
  type: boolean
  inputBinding:
    prefix: -i
- id: list_available_themes
  doc: ": List available themes. If '-t' also specified, show all values for specified\
    \ theme."
  type: boolean
  inputBinding:
    prefix: -l
- id: minimum_value_default
  doc: ': Minimum value (default=0).'
  type: string
  inputBinding:
    prefix: -m
- id: supress_output_newline
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: permissive_mode_current
  doc: ': Permissive mode - if current value out of bounds, set it to the nearest
    bound (min or max).'
  type: boolean
  inputBinding:
    prefix: -p
- id: suppress_messages_requires
  doc: ": Suppress messages (requires '-t')."
  type: boolean
  inputBinding:
    prefix: -q
- id: reverse_display_rating
  doc: ": Reverse 'direction' of display (rating theme only)."
  type: boolean
  inputBinding:
    prefix: -r
- id: name_theme_defaultvbars
  doc: ': Name of theme (default=vbars_8).'
  type: string
  inputBinding:
    prefix: -t
- id: specify_more_values
  doc: ': Specify a user theme (2 or more values).'
  type: string
  inputBinding:
    prefix: -u
- id: width_rating_default
  doc: ': Width of rating theme (default=5).'
  type: long
  inputBinding:
    prefix: -w
- id: maximum_value_default
  doc: ': Maximum value (default=100).'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- byobu-ulevel
