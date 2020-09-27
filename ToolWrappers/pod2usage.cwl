class: CommandLineTool
id: pod2usage.cwl
inputs:
- id: in_man
  doc: Print this command's manual page and exit.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_exit
  doc: The exit status value to return.
  type: string
  inputBinding:
    prefix: -exit
- id: in_output
  doc: "The output file to print to. If the special names \"-\" or \">&1\"\nor \"\
    >&STDOUT\" are used then standard output is used. If \">&2\" or\n\">&STDERR\"\
    \ is used then standard error is used."
  type: File
  inputBinding:
    prefix: -output
- id: in_verbose
  doc: "The desired level of verbosity to use:\n1 : print SYNOPSIS only\n2 : print\
    \ SYNOPSIS sections and any OPTIONS/ARGUMENTS sections\n3 : print the entire manpage\
    \ (similar to running pod2text)"
  type: long
  inputBinding:
    prefix: -verbose
- id: in_path_list
  doc: "Specifies one or more directories to search for the input file\nif it was\
    \ not supplied with an absolute path. Each directory\npath in the given list should\
    \ be separated by a ':' on Unix (';'\non MSWin32 and DOS)."
  type: File
  inputBinding:
    prefix: -pathlist
- id: in_formatter
  doc: "Which text formatter to use. Default is Pod::Text, or for very\nold Perl versions\
    \ Pod::PlainText. An alternative would be e.g.\nPod::Text::Termcap."
  type: string
  inputBinding:
    prefix: -formatter
- id: in_utf_eight
  doc: "This option assumes that the formatter (see above) understands\nthe option\
    \ \"utf8\". It turns on generation of utf8 output."
  type: boolean
  inputBinding:
    prefix: -utf8
- id: in_pod_two_usage
  doc: "[-help] [-man] [-exit exitval] [-output outfile] [-verbose\nlevel] [-pathlist\
    \ dirlist] [-formatter module] [-utf8] file"
  type: long
  inputBinding:
    position: 0
- id: in_file
  doc: "The pathname of a file containing pod documentation to be output\nin usage\
    \ message format (defaults to standard input).\n"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output file to print to. If the special names \"-\" or \">&1\"\nor \"\
    >&STDOUT\" are used then standard output is used. If \">&2\" or\n\">&STDERR\"\
    \ is used then standard error is used."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pod2usage
