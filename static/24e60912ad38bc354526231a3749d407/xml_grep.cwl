class: CommandLineTool
id: xml_grep.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_version
  doc: display the tool version
  type: boolean?
  inputBinding:
    prefix: --Version
- id: in_root
  doc: "look for and return xml chunks matching <cond>\nif neither \"--root\" nor\
    \ \"--file\" are used then the element(s) that\ntrigger the \"--cond\" option\
    \ is (are) used. If \"--cond\" is not used\nthen all elements matching the <cond>\
    \ are returned\nseveral \"--root\" can be provided"
  type: File?
  inputBinding:
    prefix: --root
- id: in_cond
  doc: "return the chunks (or file names) only if they contain elements\nmatching\
    \ <cond>\nseveral \"--cond\" can be provided (in which case they are OR'ed)"
  type: File?
  inputBinding:
    prefix: --cond
- id: in_files
  doc: "return only file names (do not generate an XML output)\nusage of this option\
    \ precludes using any of the options that define\nthe XML output: \"--roots\"\
    , \"--encoding\", \"--wrap\", \"--group_by_file\"\nor \"--pretty_print\""
  type: File?
  inputBinding:
    prefix: --files
- id: in_count
  doc: "return only the number of matches in each file\nusage of this option precludes\
    \ using any of the options that define\nthe XML output: \"--roots\", \"--encoding\"\
    , \"--wrap\", \"--group_by_file\"\nor \"--pretty_print\""
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_strict
  doc: "without this option parsing errors are reported to STDOUT and the\nfile skipped"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_date
  doc: "when on (by default) the wrapping element get a \"date\" attribute\nthat gives\
    \ the date the tool was run.\nwith \"--nodate\" this attribute is not added, which\
    \ can be useful if\nyou need to compare 2 runs."
  type: boolean?
  inputBinding:
    prefix: --date
- id: in_encoding
  doc: encoding of the xml output (utf-8 by default)
  type: long?
  inputBinding:
    prefix: --encoding
- id: in_nb_results
  doc: output only <nb> results
  type: string?
  inputBinding:
    prefix: --nb_results
- id: in_by_file
  doc: output only <nb> results by file
  type: File?
  inputBinding:
    prefix: --by_file
- id: in_wrap
  doc: "wrap the xml result in the provided tag (defaults to 'xml_grep')\nIf wrap\
    \ is set to an empty string (\"--wrap ''\") then the xml result\nis not wrapped\
    \ at all."
  type: string?
  inputBinding:
    prefix: --wrap
- id: in_nowrap
  doc: "same as using \"--wrap ''\": the xml result is not wrapped."
  type: boolean?
  inputBinding:
    prefix: --nowrap
- id: in_descr
  doc: "attributes of the wrap tag (defaults to \"version=\"<VERSION>\"\ndate=\"<date>\"\
    \")"
  type: string?
  inputBinding:
    prefix: --descr
- id: in_group_by_file
  doc: "wrap results for each files into a separate element. By default that\nelement\
    \ is named \"file\". It has an attribute named \"filename\" that\ngives the name\
    \ of the file.\nthe short version of this option is -g"
  type: File?
  inputBinding:
    prefix: --group_by_file
- id: in_exclude
  doc: "same as using \"-v\" in grep: the elements that match the condition\nare excluded\
    \ from the result, the input file(s) is (are) otherwise\nunchanged\nthe short\
    \ form of this option is -v"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_pretty_print
  doc: "pretty print the output using XML::Twig styles ('\"indented\"',\n'\"record\"\
    ' or '\"record_c\"' are probably what you are looking for)\nif the option is used\
    \ but no style is given then '\"indented\"' is\nused\nshort form for this argument\
    \ is -s"
  type: string?
  inputBinding:
    prefix: --pretty_print
- id: in_text_only
  doc: Displays the text of the results, one by line.
  type: boolean?
  inputBinding:
    prefix: --text_only
- id: in_html
  doc: Allow HTML input, files are converted using HTML::TreeBuilder
  type: boolean?
  inputBinding:
    prefix: --html
- id: in_tidy
  doc: Allow HTML input, files are converted using HTML::Tidy
  type: boolean?
  inputBinding:
    prefix: --Tidy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_files
  doc: "return only file names (do not generate an XML output)\nusage of this option\
    \ precludes using any of the options that define\nthe XML output: \"--roots\"\
    , \"--encoding\", \"--wrap\", \"--group_by_file\"\nor \"--pretty_print\""
  type: File?
  outputBinding:
    glob: $(inputs.in_files)
- id: out_by_file
  doc: output only <nb> results by file
  type: File?
  outputBinding:
    glob: $(inputs.in_by_file)
hints: []
cwlVersion: v1.1
baseCommand:
- xml_grep
