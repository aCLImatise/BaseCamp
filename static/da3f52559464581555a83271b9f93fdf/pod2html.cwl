class: CommandLineTool
id: pod2html.cwl
inputs:
- id: in_cache_dir
  doc: '- directory for the directory cache files.'
  type: boolean?
  inputBinding:
    prefix: --cachedir
- id: in_css
  doc: '- stylesheet URL'
  type: boolean?
  inputBinding:
    prefix: --css
- id: in_flush
  doc: '- flushes the directory cache.'
  type: boolean?
  inputBinding:
    prefix: --flush
- id: in_html_dir
  doc: '- directory for resulting HTML files.'
  type: boolean?
  inputBinding:
    prefix: --htmldir
- id: in_html_root
  doc: "- http-server base directory from which all relative paths\nin podpath stem\
    \ (default is /)."
  type: boolean?
  inputBinding:
    prefix: --htmlroot
- id: in_in_file
  doc: "- filename for the pod to convert (input taken from stdin\nby default)."
  type: boolean?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: "- filename for the resulting html file (output sent to\nstdout by default)."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_pod_path
  doc: "- colon-separated list of directories containing library\npods (empty by default)."
  type: boolean?
  inputBinding:
    prefix: --podpath
- id: in_pod_root
  doc: "- filesystem base directory from which all relative paths\nin podpath stem\
    \ (default is .)."
  type: boolean?
  inputBinding:
    prefix: --podroot
- id: in_title
  doc: '- title that will appear in resulting html file.'
  type: boolean?
  inputBinding:
    prefix: --title
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "- filename for the resulting html file (output sent to\nstdout by default)."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- pod2html
