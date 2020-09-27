class: CommandLineTool
id: epydoc.cwl
inputs:
- id: in_config
  doc: "A configuration file, specifying additional OPTIONS\nand/or NAMES.  This option\
    \ may be repeated."
  type: File
  inputBinding:
    prefix: --config
- id: in_output
  doc: "The output directory.  If PATH does not exist, then it\nwill be created."
  type: File
  inputBinding:
    prefix: --output
- id: in_quiet
  doc: Decrease the verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Increase the verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Show full tracebacks for internal errors.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_simple_term
  doc: "Do not try to use color or cursor control when\ndisplaying the progress bar,\
    \ warnings, or errors."
  type: boolean
  inputBinding:
    prefix: --simple-term
- id: in_html
  doc: Write HTML output.
  type: boolean
  inputBinding:
    prefix: --html
- id: in_text
  doc: Write plaintext output. (not implemented yet)
  type: boolean
  inputBinding:
    prefix: --text
- id: in_latex
  doc: Write LaTeX output.
  type: boolean
  inputBinding:
    prefix: --latex
- id: in_dvi
  doc: Write DVI output.
  type: boolean
  inputBinding:
    prefix: --dvi
- id: in_ps
  doc: Write Postscript output.
  type: boolean
  inputBinding:
    prefix: --ps
- id: in_pdf
  doc: Write PDF output.
  type: boolean
  inputBinding:
    prefix: --pdf
- id: in_check
  doc: Check completeness of docs.
  type: boolean
  inputBinding:
    prefix: --check
- id: in_pickle
  doc: Write the documentation to a pickle file.
  type: boolean
  inputBinding:
    prefix: --pickle
- id: in_doc_format
  doc: "The default markup language for docstrings.  Defaults\nto \"epytext\"."
  type: string
  inputBinding:
    prefix: --docformat
- id: in_parse_only
  doc: Get all information from parsing (don't introspect)
  type: boolean
  inputBinding:
    prefix: --parse-only
- id: in_introspect_only
  doc: Get all information from introspecting (don't parse)
  type: boolean
  inputBinding:
    prefix: --introspect-only
- id: in_exclude
  doc: "Exclude modules whose dotted name matches the regular\nexpression PATTERN"
  type: string
  inputBinding:
    prefix: --exclude
- id: in_exclude_introspect
  doc: "Exclude introspection of modules whose dotted name\nmatches the regular expression\
    \ PATTERN"
  type: string
  inputBinding:
    prefix: --exclude-introspect
- id: in_exclude_parse
  doc: "Exclude parsing of modules whose dotted name matches\nthe regular expression\
    \ PATTERN"
  type: string
  inputBinding:
    prefix: --exclude-parse
- id: in_inheritance
  doc: "The format for showing inheritance objects.  STYLE\nshould be one of: grouped,\
    \ listed, included."
  type: string
  inputBinding:
    prefix: --inheritance
- id: in_show_private
  doc: Include private variables in the output. (default)
  type: boolean
  inputBinding:
    prefix: --show-private
- id: in_no_private
  doc: Do not include private variables in the output.
  type: boolean
  inputBinding:
    prefix: --no-private
- id: in_show_imports
  doc: List each module's imports.
  type: boolean
  inputBinding:
    prefix: --show-imports
- id: in_no_imports
  doc: Do not list each module's imports. (default)
  type: boolean
  inputBinding:
    prefix: --no-imports
- id: in_show_source_code
  doc: "Include source code with syntax highlighting in the\nHTML output. (default)"
  type: boolean
  inputBinding:
    prefix: --show-sourcecode
- id: in_no_source_code
  doc: "Do not include source code with syntax highlighting in\nthe HTML output."
  type: boolean
  inputBinding:
    prefix: --no-sourcecode
- id: in_include_log
  doc: Include a page with the process log (epydoc-log.html)
  type: boolean
  inputBinding:
    prefix: --include-log
- id: in_redundant_details
  doc: "Include values in the details lists even if all info\nabout them is already\
    \ provided by the summary table."
  type: boolean
  inputBinding:
    prefix: --redundant-details
- id: in_name
  doc: "The documented project's name (for the navigation\nbar)."
  type: string
  inputBinding:
    prefix: --name
- id: in_css
  doc: "The CSS stylesheet.  STYLESHEET can be either a\nbuiltin stylesheet or the\
    \ name of a CSS file."
  type: File
  inputBinding:
    prefix: --css
- id: in_url
  doc: The documented project's URL (for the navigation bar).
  type: string
  inputBinding:
    prefix: --url
- id: in_nav_link
  doc: "HTML code for a navigation link to place in the\nnavigation bar."
  type: string
  inputBinding:
    prefix: --navlink
- id: in_top
  doc: "The \"top\" page for the HTML documentation.  PAGE can\nbe a URL, the name\
    \ of a module or class, or one of the\nspecial names \"trees.html\", \"indices.html\"\
    , or\n\"help.html\""
  type: string
  inputBinding:
    prefix: --top
- id: in_help_file
  doc: "An alternate help file.  FILE should contain the body\nof an HTML file --\
    \ navigation bars will be added to\nit."
  type: File
  inputBinding:
    prefix: --help-file
- id: in_show_frames
  doc: Include frames in the HTML output. (default)
  type: boolean
  inputBinding:
    prefix: --show-frames
- id: in_no_frames
  doc: Do not include frames in the HTML output.
  type: boolean
  inputBinding:
    prefix: --no-frames
- id: in_separate_classes
  doc: "When generating LaTeX or PDF output, list each class\nin its own section,\
    \ instead of listing them under\ntheir containing module."
  type: boolean
  inputBinding:
    prefix: --separate-classes
- id: in_src_code_tab_width
  doc: "When generating HTML output, sets the number of spaces\neach tab in source\
    \ code listings is replaced with."
  type: long
  inputBinding:
    prefix: --src-code-tab-width
- id: in_external_api
  doc: "Define a new API document.  A new interpreted text\nrole NAME will be added."
  type: string
  inputBinding:
    prefix: --external-api
- id: in_external_api_file
  doc: ":FILENAME\nUse records in FILENAME to resolve objects in the API\nnamed NAME."
  type: File
  inputBinding:
    prefix: --external-api-file
- id: in_external_api_root
  doc: ":STRING\nUse STRING as prefix for the URL generated from the\nAPI NAME."
  type: string
  inputBinding:
    prefix: --external-api-root
- id: in_graph
  doc: Include graphs of type GRAPHTYPE in the generated
  type: string
  inputBinding:
    prefix: --graph
- id: in_dot_path
  doc: The path to the Graphviz 'dot' executable.
  type: File
  inputBinding:
    prefix: --dotpath
- id: in_graph_font
  doc: "Specify the font used to generate Graphviz graphs.\n(e.g., helvetica or times)."
  type: string
  inputBinding:
    prefix: --graph-font
- id: in_graph_font_size
  doc: "Specify the font size used to generate Graphviz\ngraphs, in points."
  type: long
  inputBinding:
    prefix: --graph-font-size
- id: in_pst_at
  doc: A pstat output file, to be used in generating call
  type: File
  inputBinding:
    prefix: --pstat
- id: in_fail_on_error
  doc: "Return a non-zero exit status, indicating failure, if\nany errors are encountered."
  type: boolean
  inputBinding:
    prefix: --fail-on-error
- id: in_fail_on_warning
  doc: "Return a non-zero exit status, indicating failure, if\nany errors or warnings\
    \ are encountered (not including\ndocstring warnings)."
  type: boolean
  inputBinding:
    prefix: --fail-on-warning
- id: in_fail_on_docstring_warning
  doc: "Return a non-zero exit status, indicating failure, if\nany errors or warnings\
    \ are encountered (including\ndocstring warnings).\n"
  type: boolean
  inputBinding:
    prefix: --fail-on-docstring-warning
- id: in_output_dot
  doc: Graphs are generated using the Graphviz dot
  type: string
  inputBinding:
    position: 0
- id: in_executable_dot
  doc: If this executable is not on the path,
  type: string
  inputBinding:
    position: 1
- id: in_graphs_dot
  doc: 'Return Value Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory.  If PATH does not exist, then it\nwill be created."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_pst_at
  doc: A pstat output file, to be used in generating call
  type: File
  outputBinding:
    glob: $(inputs.in_pst_at)
cwlVersion: v1.1
baseCommand:
- epydoc
