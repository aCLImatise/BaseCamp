class: CommandLineTool
id: cgatreport_test.cwl
inputs:
- id: tracker
  doc: tracker to use [default=none]
  type: string
  inputBinding:
    prefix: --tracker
- id: page
  doc: render an rst page [default=none]
  type: string
  inputBinding:
    prefix: --page
- id: tracks
  doc: tracks to use [default=none]
  type: string
  inputBinding:
    prefix: --tracks
- id: transformer
  doc: add transformation [default=[]]
  type: string
  inputBinding:
    prefix: --transformer
- id: slices
  doc: slices to use [default=none]
  type: string
  inputBinding:
    prefix: --slices
- id: renderer
  doc: renderer to use [default=table]
  type: string
  inputBinding:
    prefix: --renderer
- id: tracker_dir
  doc: path to trackers [default=trackers]
  type: string
  inputBinding:
    prefix: --trackerdir
- id: force
  doc: force recomputation of data by deleting cached results [default=False]
  type: boolean
  inputBinding:
    prefix: --force
- id: option
  doc: renderer options - supply as key=value pairs (without spaces). [default=[]]
  type: string
  inputBinding:
    prefix: --option
- id: language
  doc: output language for snippet. Use ``rst`` to create a snippet to paste into
    a cgatreport document. Use ``notebook`` to create a snippet to paste into an ipython
    notebook [default=rst]
  type: string
  inputBinding:
    prefix: --language
- id: no_print
  doc: do not print an rst text element to create the displayed plots [default=True].
  type: boolean
  inputBinding:
    prefix: --no-print
- id: no_show
  doc: do not show a plot [default=True].
  type: boolean
  inputBinding:
    prefix: --no-show
- id: layout
  doc: output rst with layout [default=none].
  type: string
  inputBinding:
    prefix: --layout
- id: start_interpreter
  doc: do not render, but start python interpreter [default=False].
  type: boolean
  inputBinding:
    prefix: --start-interpreter
- id: start_ipython
  doc: do not render, start ipython interpreter [default=False].
  type: boolean
  inputBinding:
    prefix: --start-ipython
- id: workdir
  doc: working directory - change to this directory before executing [default=none]
  type: string
  inputBinding:
    prefix: --workdir
- id: hard_copy
  doc: output images of plots. The parameter should contain one or more %s The suffix
    determines the type of plot. [default=none].
  type: string
  inputBinding:
    prefix: --hardcopy
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-test
