class: CommandLineTool
id: vision.cwl
inputs:
- id: in_no_splash
  doc: ": doesn't show the Vision splash screen (works only if registered)"
  type: string?
  inputBinding:
    prefix: --noSplash
- id: in_no_terminal
  doc: ": vision provides its own shell (under menu 'Edit')\ninstead of the terminal"
  type: string?
  inputBinding:
    prefix: --noTerminal
- id: in_resource_folder
  doc: ': stores resource file under .name (defaults to .mgltools)'
  type: Directory?
  inputBinding:
    prefix: --resourceFolder
- id: in_ipython
  doc: ': create an ipython shell instead of a python shell'
  type: string?
  inputBinding:
    prefix: --ipython
- id: in_run
  doc: ': run the networks on the command line'
  type: string?
  inputBinding:
    prefix: --run
- id: in_run_and_exit
  doc: ': run the networks and exit'
  type: string?
  inputBinding:
    prefix: --runAndExit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vision
