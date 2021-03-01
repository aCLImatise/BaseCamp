class: CommandLineTool
id: qcli_make_script.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_author_name
  doc: "The script author's (probably you) name to be included\nin the header variables.\
    \ This will typically need to\nbe enclosed  in quotes to handle spaces.\n[default:AUTHOR_NAME]"
  type: string?
  inputBinding:
    prefix: --author_name
- id: in_author_email
  doc: "The script author's (probably you) e-mail address to\nbe included in the header\
    \ variables.\n[default:AUTHOR_EMAIL]"
  type: string?
  inputBinding:
    prefix: --author_email
- id: in_copyright
  doc: "The copyright information to be included in the header\nvariables. [default:Copyright\
    \ 2013, The BiPy project]"
  type: long?
  inputBinding:
    prefix: --copyright
- id: in_output_fp
  doc: "The output filepath. [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --output_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "The output filepath. [REQUIRED]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- qcli_make_script
