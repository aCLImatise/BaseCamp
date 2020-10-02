class: CommandLineTool
id: sviol.cwl
inputs:
- id: in_old
  doc: "Use the old AMBER formatting (pre-Amber6).\nThe 'ideal bonds' and 'ideal angles'\
    \ lines have different fields\npre-AMBER6 and AMBER6."
  type: boolean
  inputBinding:
    prefix: -old
- id: in_print_distance_violations
  doc: "Print out distance violations in \"verbose\" mode showing\nactual values instead\
    \ of a 'graphical' display."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_information_dot
  doc: 'Note:  You can fit all the info on a page in landscape by using enscript.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sviol
