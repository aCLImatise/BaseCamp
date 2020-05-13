class: CommandLineTool
id: epydoc.cwl
inputs:
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: names
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: html
  doc: Write HTML output.
  type: boolean
  inputBinding:
    prefix: --html
- id: text
  doc: Write plaintext output. (not implemented yet)
  type: boolean
  inputBinding:
    prefix: --text
- id: latex
  doc: Write LaTeX output.
  type: boolean
  inputBinding:
    prefix: --latex
- id: dvi
  doc: Write DVI output.
  type: boolean
  inputBinding:
    prefix: --dvi
- id: ps
  doc: Write Postscript output.
  type: boolean
  inputBinding:
    prefix: --ps
- id: pdf
  doc: Write PDF output.
  type: boolean
  inputBinding:
    prefix: --pdf
- id: check
  doc: Check completeness of docs.
  type: boolean
  inputBinding:
    prefix: --check
- id: pickle
  doc: Write the documentation to a pickle file.
  type: boolean
  inputBinding:
    prefix: --pickle
- id: doc_format
  doc: The default markup language for docstrings.  Defaults to "epytext".
  type: string
  inputBinding:
    prefix: --docformat
- id: parse_only
  doc: Get all information from parsing (don't introspect)
  type: boolean
  inputBinding:
    prefix: --parse-only
- id: introspect_only
  doc: Get all information from introspecting (don't parse)
  type: boolean
  inputBinding:
    prefix: --introspect-only
- id: exclude
  doc: Exclude modules whose dotted name matches the regular expression PATTERN
  type: string
  inputBinding:
    prefix: --exclude
- id: exclude_introspect
  doc: Exclude introspection of modules whose dotted name matches the regular expression
    PATTERN
  type: string
  inputBinding:
    prefix: --exclude-introspect
- id: exclude_parse
  doc: Exclude parsing of modules whose dotted name matches the regular expression
    PATTERN
  type: string
  inputBinding:
    prefix: --exclude-parse
- id: inheritance
  doc: 'The format for showing inheritance objects.  STYLE should be one of: grouped,
    listed, included.'
  type: string
  inputBinding:
    prefix: --inheritance
- id: show_private
  doc: Include private variables in the output. (default)
  type: boolean
  inputBinding:
    prefix: --show-private
- id: no_private
  doc: Do not include private variables in the output.
  type: boolean
  inputBinding:
    prefix: --no-private
- id: show_imports
  doc: List each module's imports.
  type: boolean
  inputBinding:
    prefix: --show-imports
- id: no_imports
  doc: Do not list each module's imports. (default)
  type: boolean
  inputBinding:
    prefix: --no-imports
- id: show_source_code
  doc: Include source code with syntax highlighting in the HTML output. (default)
  type: boolean
  inputBinding:
    prefix: --show-sourcecode
- id: no_source_code
  doc: Do not include source code with syntax highlighting in the HTML output.
  type: boolean
  inputBinding:
    prefix: --no-sourcecode
- id: include_log
  doc: Include a page with the process log (epydoc-log.html)
  type: boolean
  inputBinding:
    prefix: --include-log
- id: redundant_details
  doc: Include values in the details lists even if all info about them is already
    provided by the summary table.
  type: boolean
  inputBinding:
    prefix: --redundant-details
- id: name
  doc: The documented project's name (for the navigation bar).
  type: string
  inputBinding:
    prefix: --name
- id: css
  doc: The CSS stylesheet.  STYLESHEET can be either a builtin stylesheet or the name
    of a CSS file.
  type: string
  inputBinding:
    prefix: --css
- id: url
  doc: The documented project's URL (for the navigation bar).
  type: string
  inputBinding:
    prefix: --url
- id: nav_link
  doc: HTML code for a navigation link to place in the navigation bar.
  type: string
  inputBinding:
    prefix: --navlink
- id: top
  doc: The "top" page for the HTML documentation.  PAGE can be a URL, the name of
    a module or class, or one of the special names "trees.html", "indices.html", or
    "help.html"
  type: string
  inputBinding:
    prefix: --top
- id: help_file
  doc: An alternate help file.  FILE should contain the body of an HTML file -- navigation
    bars will be added to it.
  type: File
  inputBinding:
    prefix: --help-file
- id: show_frames
  doc: Include frames in the HTML output. (default)
  type: boolean
  inputBinding:
    prefix: --show-frames
- id: no_frames
  doc: Do not include frames in the HTML output.
  type: boolean
  inputBinding:
    prefix: --no-frames
- id: separate_classes
  doc: When generating LaTeX or PDF output, list each class in its own section, instead
    of listing them under their containing module.
  type: boolean
  inputBinding:
    prefix: --separate-classes
- id: src_code_tab_width
  doc: When generating HTML output, sets the number of spaces each tab in source code
    listings is replaced with.
  type: string
  inputBinding:
    prefix: --src-code-tab-width
- id: graph
  doc: 'Include graphs of type GRAPHTYPE in the generated output.  Graphs are generated
    using the Graphviz dot executable.  If this executable is not on the path, then
    use --dotpath to specify its location.  This option may be repeated to include
    multiple graph types in the output.  GRAPHTYPE should be one of: all, classtree,
    callgraph, umlclasstree.'
  type: string
  inputBinding:
    prefix: --graph
- id: dot_path
  doc: The path to the Graphviz 'dot' executable.
  type: File
  inputBinding:
    prefix: --dotpath
- id: graph_font
  doc: Specify the font used to generate Graphviz graphs. (e.g., helvetica or times).
  type: string
  inputBinding:
    prefix: --graph-font
- id: graph_font_size
  doc: Specify the font size used to generate Graphviz graphs, in points.
  type: long
  inputBinding:
    prefix: --graph-font-size
- id: pst_at
  doc: A pstat output file, to be used in generating call graphs.
  type: File
  inputBinding:
    prefix: --pstat
- id: fail_on_error
  doc: Return a non-zero exit status, indicating failure, if any errors are encountered.
  type: boolean
  inputBinding:
    prefix: --fail-on-error
- id: fail_on_warning
  doc: Return a non-zero exit status, indicating failure, if any errors or warnings
    are encountered (not including docstring warnings).
  type: boolean
  inputBinding:
    prefix: --fail-on-warning
- id: fail_on_docstring_warning
  doc: Return a non-zero exit status, indicating failure, if any errors or warnings
    are encountered (including docstring warnings).
  type: boolean
  inputBinding:
    prefix: --fail-on-docstring-warning
outputs: []
cwlVersion: v1.1
baseCommand:
- epydoc
