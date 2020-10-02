class: CommandLineTool
id: fitsdiff.cwl
inputs:
- id: in_quiet
  doc: Produce no output and just return a status code.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_num_diffs
  doc: "Max number of data differences (image pixel or table\nelement) to report per\
    \ extension (default 10)."
  type: long
  inputBinding:
    prefix: --num-diffs
- id: in_difference_tolerance
  doc: "DEPRECATED. Alias for \"--relative-tolerance\".\nDeprecated, provided for\
    \ backward compatibility\n(default none)."
  type: long
  inputBinding:
    prefix: --difference-tolerance
- id: in_relative_tolerance
  doc: "The relative tolerance for comparison of two numbers,\nspecifically two floating\
    \ point numbers.  This applies\nto data in both images and tables, and to floating\n\
    point keyword values in headers (default none)."
  type: long
  inputBinding:
    prefix: --relative-tolerance
- id: in_absolute_tolerance
  doc: "The absolute tolerance for comparison of two numbers,\nspecifically two floating\
    \ point numbers.  This applies\nto data in both images and tables, and to floating\n\
    point keyword values in headers (default none)."
  type: long
  inputBinding:
    prefix: --absolute-tolerance
- id: in_no_ignore_blanks
  doc: "Don't ignore trailing blanks (whitespace) in string\nvalues.  Otherwise trailing\
    \ blanks both in header\nkeywords/values and in table column values) are not\n\
    treated as significant i.e., without this option\n'ABCDEF   ' and 'ABCDEF' are\
    \ considered equivalent."
  type: boolean
  inputBinding:
    prefix: --no-ignore-blanks
- id: in_no_ignore_blank_cards
  doc: "Don't ignore entirely blank cards in headers.\nNormally fitsdiff does not\
    \ consider blank cards when\ncomparing headers, but this will ensure that even\n\
    blank cards match up."
  type: boolean
  inputBinding:
    prefix: --no-ignore-blank-cards
- id: in_exact
  doc: "Report ALL differences, overriding command-line\noptions and FITSDIFF_SETTINGS."
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_output_file
  doc: "Output results to this file; otherwise results are\nprinted to stdout."
  type: File
  inputBinding:
    prefix: --output-file
- id: in_ignore_keywords
  doc: "Comma-separated list of keywords not to be compared.\nKeywords may contain\
    \ wildcard patterns.  To exclude\nall keywords, use \"*\"; make sure to have double\
    \ or\nsingle quotes around the asterisk on the command-line."
  type: string
  inputBinding:
    prefix: --ignore-keywords
- id: in_ignore_comments
  doc: "Comma-separated list of keywords whose comments will\nnot be compared.  Wildcards\
    \ may be used as with\n--ignore-keywords."
  type: string
  inputBinding:
    prefix: --ignore-comments
- id: in_ignore_fields
  doc: "Comma-separated list of fields (i.e. columns) not to\nbe compared.  All columns\
    \ may be excluded using \"*\" as\nwith --ignore-keywords."
  type: string
  inputBinding:
    prefix: --ignore-fields
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output results to this file; otherwise results are\nprinted to stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- fitsdiff
