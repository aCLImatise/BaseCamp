class: CommandLineTool
id: pycodestyle.cwl
inputs:
- id: in_verbose
  doc: print status messages, or debug with -vv
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: report only file names, or nothing with -qq
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_repeat
  doc: (obsolete) show all occurrences of the same error
  type: boolean?
  inputBinding:
    prefix: --repeat
- id: in_first
  doc: show first occurrence of each error
  type: boolean?
  inputBinding:
    prefix: --first
- id: in_exclude
  doc: "exclude files or directories which match these comma\nseparated patterns (default:\n\
    .svn,CVS,.bzr,.hg,.git,__pycache__,.tox)"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_filename
  doc: "when parsing directories, only check filenames matching\nthese comma separated\
    \ patterns (default: *.py)"
  type: File?
  inputBinding:
    prefix: --filename
- id: in_select
  doc: select errors and warnings (e.g. E,W6)
  type: long?
  inputBinding:
    prefix: --select
- id: in_ignore
  doc: "skip errors and warnings (e.g. E4,W) (default:\nE121,E123,E126,E226,E24,E704,W503)"
  type: long?
  inputBinding:
    prefix: --ignore
- id: in_show_source
  doc: show source code for each error
  type: boolean?
  inputBinding:
    prefix: --show-source
- id: in_show_pep_eight
  doc: show text of PEP 8 for each error (implies --first)
  type: boolean?
  inputBinding:
    prefix: --show-pep8
- id: in_statistics
  doc: count errors and warnings
  type: boolean?
  inputBinding:
    prefix: --statistics
- id: in_count
  doc: "print total number of errors and warnings to standard\nerror and set exit\
    \ code to 1 if total is not null"
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_max_line_length
  doc: 'set maximum allowed line length (default: 79)'
  type: long?
  inputBinding:
    prefix: --max-line-length
- id: in_hang_closing
  doc: "hang closing bracket instead of matching indentation of\nopening bracket's\
    \ line"
  type: boolean?
  inputBinding:
    prefix: --hang-closing
- id: in_format
  doc: set the error format [default|pylint|<custom>]
  type: string?
  inputBinding:
    prefix: --format
- id: in_diff
  doc: "report changes only within line number ranges in the\nunified diff received\
    \ on STDIN"
  type: boolean?
  inputBinding:
    prefix: --diff
- id: in_benchmark
  doc: measure processing speed
  type: boolean?
  inputBinding:
    prefix: --benchmark
- id: in_config
  doc: user config file location
  type: File?
  inputBinding:
    prefix: --config
- id: in_pep_eight
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pycodestyle
