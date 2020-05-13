class: CommandLineTool
id: xml_grep.cwl
inputs:
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: version
  doc: display the tool version
  type: boolean
  inputBinding:
    prefix: --Version
- id: root
  doc: look for and return xml chunks matching <cond> if neither "--root" nor "--file"
    are used then the element(s) that trigger the "--cond" option is (are) used. If
    "--cond" is not used then all elements matching the <cond> are returned several
    "--root" can be provided
  type: string
  inputBinding:
    prefix: --root
- id: cond
  doc: return the chunks (or file names) only if they contain elements matching <cond>
    several "--cond" can be provided (in which case they are OR'ed)
  type: string
  inputBinding:
    prefix: --cond
- id: files
  doc: 'return only file names (do not generate an XML output) usage of this option
    precludes using any of the options that define the XML output: "--roots", "--encoding",
    "--wrap", "--group_by_file" or "--pretty_print"'
  type: boolean
  inputBinding:
    prefix: --files
- id: count
  doc: 'return only the number of matches in each file usage of this option precludes
    using any of the options that define the XML output: "--roots", "--encoding",
    "--wrap", "--group_by_file" or "--pretty_print"'
  type: boolean
  inputBinding:
    prefix: --count
- id: strict
  doc: without this option parsing errors are reported to STDOUT and the file skipped
  type: boolean
  inputBinding:
    prefix: --strict
- id: date
  doc: when on (by default) the wrapping element get a "date" attribute that gives
    the date the tool was run. with "--nodate" this attribute is not added, which
    can be useful if you need to compare 2 runs.
  type: boolean
  inputBinding:
    prefix: --date
- id: encoding
  doc: encoding of the xml output (utf-8 by default)
  type: string
  inputBinding:
    prefix: --encoding
- id: nb_results
  doc: output only <nb> results
  type: string
  inputBinding:
    prefix: --nb_results
- id: by_file
  doc: output only <nb> results by file
  type: boolean
  inputBinding:
    prefix: --by_file
- id: wrap
  doc: wrap the xml result in the provided tag (defaults to 'xml_grep') If wrap is
    set to an empty string ("--wrap ''") then the xml result is not wrapped at all.
  type: string
  inputBinding:
    prefix: --wrap
- id: nowrap
  doc: "same as using \"--wrap ''\": the xml result is not wrapped."
  type: boolean
  inputBinding:
    prefix: --nowrap
- id: descr
  doc: attributes of the wrap tag (defaults to "version="<VERSION>" date="<date>"")
  type: string
  inputBinding:
    prefix: --descr
- id: group_by_file
  doc: wrap results for each files into a separate element. By default that element
    is named "file". It has an attribute named "filename" that gives the name of the
    file. the short version of this option is -g
  type: string
  inputBinding:
    prefix: --group_by_file
- id: exclude
  doc: 'same as using "-v" in grep: the elements that match the condition are excluded
    from the result, the input file(s) is (are) otherwise unchanged the short form
    of this option is -v'
  type: string
  inputBinding:
    prefix: --exclude
- id: pretty_print
  doc: pretty print the output using XML::Twig styles ('"indented"', '"record"' or
    '"record_c"' are probably what you are looking for) if the option is used but
    no style is given then '"indented"' is used short form for this argument is -s
  type: string
  inputBinding:
    prefix: --pretty_print
- id: text_only
  doc: Displays the text of the results, one by line.
  type: boolean
  inputBinding:
    prefix: --text_only
- id: html
  doc: Allow HTML input, files are converted using HTML::TreeBuilder
  type: boolean
  inputBinding:
    prefix: --html
- id: tidy
  doc: Allow HTML input, files are converted using HTML::Tidy
  type: boolean
  inputBinding:
    prefix: --Tidy
outputs: []
cwlVersion: v1.1
baseCommand:
- xml_grep
