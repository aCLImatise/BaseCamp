class: CommandLineTool
id: readlink.cwl
inputs:
- id: in_canonicalize
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively;\nall but the last component must exist"
  type: boolean
  inputBinding:
    prefix: --canonicalize
- id: in_canonicalize_existing
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively,\nall components must exist"
  type: boolean
  inputBinding:
    prefix: --canonicalize-existing
- id: in_canonicalize_missing
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively,\nwithout requirements on components existence"
  type: boolean
  inputBinding:
    prefix: --canonicalize-missing
- id: in_no_new_line
  doc: "do not output the trailing delimiter\n-q, --quiet\n-s, --silent          \
    \        suppress most error messages (on by default)\n-v, --verbose         \
    \        report error messages\n-z, --zero                    end each output\
    \ line with NUL, not newline\n--help     display this help and exit\n--version\
    \  output version information and exit"
  type: boolean
  inputBinding:
    prefix: --no-newline
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- readlink
