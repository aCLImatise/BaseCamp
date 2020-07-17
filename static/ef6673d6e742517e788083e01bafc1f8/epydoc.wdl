version 1.0

task Epydoc {
  input {
    Boolean? html
    Boolean? text
    Boolean? latex
    Boolean? dvi
    Boolean? ps
    Boolean? pdf
    Boolean? check
    Boolean? pickle
    String? doc_format
    Boolean? parse_only
    Boolean? introspect_only
    String? exclude
    String? exclude_introspect
    String? exclude_parse
    String? inheritance
    Boolean? show_private
    Boolean? no_private
    Boolean? show_imports
    Boolean? no_imports
    Boolean? show_source_code
    Boolean? no_source_code
    Boolean? include_log
    Boolean? redundant_details
    String? name
    String? css
    String? url
    String? nav_link
    String? top
    File? help_file
    Boolean? show_frames
    Boolean? no_frames
    Boolean? separate_classes
    String? src_code_tab_width
    String? graph
    File? dot_path
    String? graph_font
    Int? graph_font_size
    File? pst_at
    Boolean? fail_on_error
    Boolean? fail_on_warning
    Boolean? fail_on_docstring_warning
    String? action
    String names_dot_dot_dot
  }
  command <<<
    epydoc \
      ~{action} \
      ~{names_dot_dot_dot} \
      ~{true="--html" false="" html} \
      ~{true="--text" false="" text} \
      ~{true="--latex" false="" latex} \
      ~{true="--dvi" false="" dvi} \
      ~{true="--ps" false="" ps} \
      ~{true="--pdf" false="" pdf} \
      ~{true="--check" false="" check} \
      ~{true="--pickle" false="" pickle} \
      ~{if defined(doc_format) then ("--docformat " +  '"' + doc_format + '"') else ""} \
      ~{true="--parse-only" false="" parse_only} \
      ~{true="--introspect-only" false="" introspect_only} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_introspect) then ("--exclude-introspect " +  '"' + exclude_introspect + '"') else ""} \
      ~{if defined(exclude_parse) then ("--exclude-parse " +  '"' + exclude_parse + '"') else ""} \
      ~{if defined(inheritance) then ("--inheritance " +  '"' + inheritance + '"') else ""} \
      ~{true="--show-private" false="" show_private} \
      ~{true="--no-private" false="" no_private} \
      ~{true="--show-imports" false="" show_imports} \
      ~{true="--no-imports" false="" no_imports} \
      ~{true="--show-sourcecode" false="" show_source_code} \
      ~{true="--no-sourcecode" false="" no_source_code} \
      ~{true="--include-log" false="" include_log} \
      ~{true="--redundant-details" false="" redundant_details} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(css) then ("--css " +  '"' + css + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(nav_link) then ("--navlink " +  '"' + nav_link + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(help_file) then ("--help-file " +  '"' + help_file + '"') else ""} \
      ~{true="--show-frames" false="" show_frames} \
      ~{true="--no-frames" false="" no_frames} \
      ~{true="--separate-classes" false="" separate_classes} \
      ~{if defined(src_code_tab_width) then ("--src-code-tab-width " +  '"' + src_code_tab_width + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(dot_path) then ("--dotpath " +  '"' + dot_path + '"') else ""} \
      ~{if defined(graph_font) then ("--graph-font " +  '"' + graph_font + '"') else ""} \
      ~{if defined(graph_font_size) then ("--graph-font-size " +  '"' + graph_font_size + '"') else ""} \
      ~{if defined(pst_at) then ("--pstat " +  '"' + pst_at + '"') else ""} \
      ~{true="--fail-on-error" false="" fail_on_error} \
      ~{true="--fail-on-warning" false="" fail_on_warning} \
      ~{true="--fail-on-docstring-warning" false="" fail_on_docstring_warning}
  >>>
  parameter_meta {
    html: "Write HTML output."
    text: "Write plaintext output. (not implemented yet)"
    latex: "Write LaTeX output."
    dvi: "Write DVI output."
    ps: "Write Postscript output."
    pdf: "Write PDF output."
    check: "Check completeness of docs."
    pickle: "Write the documentation to a pickle file."
    doc_format: "The default markup language for docstrings.  Defaults to \"epytext\"."
    parse_only: "Get all information from parsing (don't introspect)"
    introspect_only: "Get all information from introspecting (don't parse)"
    exclude: "Exclude modules whose dotted name matches the regular expression PATTERN"
    exclude_introspect: "Exclude introspection of modules whose dotted name matches the regular expression PATTERN"
    exclude_parse: "Exclude parsing of modules whose dotted name matches the regular expression PATTERN"
    inheritance: "The format for showing inheritance objects.  STYLE should be one of: grouped, listed, included."
    show_private: "Include private variables in the output. (default)"
    no_private: "Do not include private variables in the output."
    show_imports: "List each module's imports."
    no_imports: "Do not list each module's imports. (default)"
    show_source_code: "Include source code with syntax highlighting in the HTML output. (default)"
    no_source_code: "Do not include source code with syntax highlighting in the HTML output."
    include_log: "Include a page with the process log (epydoc-log.html)"
    redundant_details: "Include values in the details lists even if all info about them is already provided by the summary table."
    name: "The documented project's name (for the navigation bar)."
    css: "The CSS stylesheet.  STYLESHEET can be either a builtin stylesheet or the name of a CSS file."
    url: "The documented project's URL (for the navigation bar)."
    nav_link: "HTML code for a navigation link to place in the navigation bar."
    top: "The \"top\" page for the HTML documentation.  PAGE can be a URL, the name of a module or class, or one of the special names \"trees.html\", \"indices.html\", or \"help.html\""
    help_file: "An alternate help file.  FILE should contain the body of an HTML file -- navigation bars will be added to it."
    show_frames: "Include frames in the HTML output. (default)"
    no_frames: "Do not include frames in the HTML output."
    separate_classes: "When generating LaTeX or PDF output, list each class in its own section, instead of listing them under their containing module."
    src_code_tab_width: "When generating HTML output, sets the number of spaces each tab in source code listings is replaced with."
    graph: "Include graphs of type GRAPHTYPE in the generated output.  Graphs are generated using the Graphviz dot executable.  If this executable is not on the path, then use --dotpath to specify its location.  This option may be repeated to include multiple graph types in the output.  GRAPHTYPE should be one of: all, classtree, callgraph, umlclasstree."
    dot_path: "The path to the Graphviz 'dot' executable."
    graph_font: "Specify the font used to generate Graphviz graphs. (e.g., helvetica or times)."
    graph_font_size: "Specify the font size used to generate Graphviz graphs, in points."
    pst_at: "A pstat output file, to be used in generating call graphs."
    fail_on_error: "Return a non-zero exit status, indicating failure, if any errors are encountered."
    fail_on_warning: "Return a non-zero exit status, indicating failure, if any errors or warnings are encountered (not including docstring warnings)."
    fail_on_docstring_warning: "Return a non-zero exit status, indicating failure, if any errors or warnings are encountered (including docstring warnings)."
    action: ""
    names_dot_dot_dot: ""
  }
}