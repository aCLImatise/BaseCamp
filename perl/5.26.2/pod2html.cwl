class: CommandLineTool
id: ../../../pod2html.cwl
inputs:
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    prefix: --outfile
- id: in_pod_path
  doc: :...:<name> --podroot=<name>
  type: string
  inputBinding:
    prefix: --podpath
- id: in_no_recurse
  doc: ''
  type: string
  inputBinding:
    prefix: --norecurse
- id: in_no_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: in_no_back_link
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nobacklink
- id: in_no_pod_errors
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nopoderrors
- id: in_title
  doc: ''
  type: string
  inputBinding:
    prefix: --title
- id: in_html_dir
  doc: '- directory for resulting HTML files.'
  type: boolean
  inputBinding:
    prefix: --htmldir
- id: in_html_root
  doc: "- http-server base directory from which all relative paths\nin podpath stem\
    \ (default is /)."
  type: boolean
  inputBinding:
    prefix: --htmlroot
- id: in_pod_root
  doc: "- filesystem base directory from which all relative paths\nin podpath stem\
    \ (default is .)."
  type: boolean
  inputBinding:
    prefix: --podroot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pod2html
