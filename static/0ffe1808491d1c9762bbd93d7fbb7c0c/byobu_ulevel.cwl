class: CommandLineTool
id: byobu_ulevel.cwl
inputs:
- id: a
  doc: ": Accessibility mode: only output ASCII. (Also enabled if variable 'BYOBU_A11Y'\
    \ set)."
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: ": Display current value as space if zero, rather than lowest 'value' of theme."
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: ': Current value of your indicator.'
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: ': Enable debug output.'
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: ': Number of decimal places to use for accessibility mode (default=2).'
  type: long
  inputBinding:
    prefix: -e
- id: i
  doc: ': Invert colour scheme (rating themes only).'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: ": List available themes. If '-t' also specified, show all values for specified\
    \ theme."
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: ': Minimum value (default=0).'
  type: string
  inputBinding:
    prefix: -m
- id: n
  doc: ': Supress output of newline character.'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: ': Permissive mode - if current value out of bounds, set it to the nearest
    bound (min or max).'
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: ": Suppress messages (requires '-t')."
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: ": Reverse 'direction' of display (rating theme only)."
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: ': Name of theme (default=vbars_8).'
  type: string
  inputBinding:
    prefix: -t
- id: u
  doc: ': Specify a user theme (2 or more values).'
  type: string
  inputBinding:
    prefix: -u
- id: w
  doc: ': Width of rating theme (default=5).'
  type: long
  inputBinding:
    prefix: -w
- id: x
  doc: ': Maximum value (default=100).'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- byobu-ulevel
