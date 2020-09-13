class: CommandLineTool
id: ../../../xsv_join.cwl
inputs:
- id: in_no_case
  doc: When set, joins are done case insensitively.
  type: boolean
  inputBinding:
    prefix: --no-case
- id: in_left
  doc: "Do a 'left outer' join. This returns all rows in\nfirst CSV data set, including\
    \ rows with no\ncorresponding row in the second data set. When no\ncorresponding\
    \ row exists, it is padded out with\nempty fields."
  type: boolean
  inputBinding:
    prefix: --left
- id: in_right
  doc: "Do a 'right outer' join. This returns all rows in\nsecond CSV data set, including\
    \ rows with no\ncorresponding row in the first data set. When no\ncorresponding\
    \ row exists, it is padded out with\nempty fields. (This is the reverse of 'outer\
    \ left'.)"
  type: boolean
  inputBinding:
    prefix: --right
- id: in_full
  doc: "Do a 'full outer' join. This returns all rows in\nboth data sets with matching\
    \ records joined. If\nthere is no match, the missing side will be padded\nout\
    \ with empty fields. (This is the combination of\n'outer left' and 'outer right'.)"
  type: boolean
  inputBinding:
    prefix: --full
- id: in_cross
  doc: "USE WITH CAUTION.\nThis returns the cartesian product of the CSV\ndata sets\
    \ given. The number of rows return is\nequal to N * M, where N and M correspond\
    \ to the\nnumber of rows in the given data sets, respectively."
  type: boolean
  inputBinding:
    prefix: --cross
- id: in_nulls
  doc: "When set, joins will work on empty fields.\nOtherwise, empty fields are completely\
    \ ignored.\n(In fact, any row that has an empty field in the\nkey specified is\
    \ ignored.)"
  type: boolean
  inputBinding:
    prefix: --nulls
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will not be interpreted\nas headers. (i.e., They are\
    \ not searched, analyzed,\nsliced, etc.)"
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- xsv
- join
