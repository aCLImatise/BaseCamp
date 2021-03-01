class: CommandLineTool
id: cgatreport_test.cwl
inputs:
- id: in_tracker
  doc: tracker to use [default=none]
  type: string?
  inputBinding:
    prefix: --tracker
- id: in_page
  doc: render an rst page [default=none]
  type: string?
  inputBinding:
    prefix: --page
- id: in_tracks
  doc: tracks to use [default=none]
  type: string?
  inputBinding:
    prefix: --tracks
- id: in_transformer
  doc: add transformation [default=[]]
  type: string?
  inputBinding:
    prefix: --transformer
- id: in_slices
  doc: slices to use [default=none]
  type: string?
  inputBinding:
    prefix: --slices
- id: in_renderer
  doc: renderer to use [default=table]
  type: string?
  inputBinding:
    prefix: --renderer
- id: in_tracker_dir
  doc: path to trackers [default=trackers]
  type: File?
  inputBinding:
    prefix: --trackerdir
- id: in_force
  doc: "force recomputation of data by deleting cached results\n[default=False]"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_option
  doc: "renderer options - supply as key=value pairs (without\nspaces). [default=[]]"
  type: string?
  inputBinding:
    prefix: --option
- id: in_language
  doc: "output language for snippet. Use ``rst`` to create a\nsnippet to paste into\
    \ a cgatreport document. Use\n``notebook`` to create a snippet to paste into an\n\
    ipython notebook [default=rst]"
  type: string?
  inputBinding:
    prefix: --language
- id: in_no_print
  doc: "do not print an rst text element to create the\ndisplayed plots [default=True]."
  type: boolean?
  inputBinding:
    prefix: --no-print
- id: in_no_show
  doc: do not show a plot [default=True].
  type: boolean?
  inputBinding:
    prefix: --no-show
- id: in_layout
  doc: output rst with layout [default=none].
  type: string?
  inputBinding:
    prefix: --layout
- id: in_start_interpreter
  doc: "do not render, but start python interpreter\n[default=False]."
  type: boolean?
  inputBinding:
    prefix: --start-interpreter
- id: in_start_ipython
  doc: "do not render, start ipython interpreter\n[default=False]."
  type: boolean?
  inputBinding:
    prefix: --start-ipython
- id: in_workdir
  doc: "working directory - change to this directory before\nexecuting [default=none]"
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_hard_copy
  doc: "output images of plots. The parameter should contain\none or more %s The suffix\
    \ determines the type of plot.\n[default=none].\n"
  type: string?
  inputBinding:
    prefix: --hardcopy
- id: in_cgat_report_test
  doc: will collect all:class:`Trackers` and will execute them.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgatreport-test
