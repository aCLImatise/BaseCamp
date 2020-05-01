#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-test
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-test
inputs:
- doc: tracker to use [default=none]
  id: tracker
  inputBinding:
    prefix: --tracker
  type: string
- doc: render an rst page [default=none]
  id: page
  inputBinding:
    prefix: --page
  type: string
- doc: tracks to use [default=none]
  id: tracks
  inputBinding:
    prefix: --tracks
  type: string
- doc: add transformation [default=[]]
  id: transformer
  inputBinding:
    prefix: --transformer
  type: string
- doc: slices to use [default=none]
  id: slices
  inputBinding:
    prefix: --slices
  type: string
- doc: renderer to use [default=table]
  id: renderer
  inputBinding:
    prefix: --renderer
  type: string
- doc: path to trackers [default=trackers]
  id: tracker_dir
  inputBinding:
    prefix: --trackerdir
  type: string
- doc: force recomputation of data by deleting cached results [default=False]
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: renderer options - supply as key=value pairs (without spaces). [default=[]]
  id: option
  inputBinding:
    prefix: --option
  type: string
- doc: output language for snippet. Use ``rst`` to create a snippet to paste into
    a cgatreport document. Use ``notebook`` to create a snippet to paste into an ipython
    notebook [default=rst]
  id: language
  inputBinding:
    prefix: --language
  type: string
- doc: do not print an rst text element to create the displayed plots [default=True].
  id: no_print
  inputBinding:
    prefix: --no-print
  type: boolean
- doc: do not show a plot [default=True].
  id: no_show
  inputBinding:
    prefix: --no-show
  type: boolean
- doc: output rst with layout [default=none].
  id: layout
  inputBinding:
    prefix: --layout
  type: string
- doc: do not render, but start python interpreter [default=False].
  id: start_interpreter
  inputBinding:
    prefix: --start-interpreter
  type: boolean
- doc: do not render, start ipython interpreter [default=False].
  id: start_ipython
  inputBinding:
    prefix: --start-ipython
  type: boolean
- doc: working directory - change to this directory before executing [default=none]
  id: workdir
  inputBinding:
    prefix: --workdir
  type: string
- doc: output images of plots. The parameter should contain one or more %s The suffix
    determines the type of plot. [default=none].
  id: hard_copy
  inputBinding:
    prefix: --hardcopy
  type: string
