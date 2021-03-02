version 1.0

task Epydoc {
  input {
    File? config
    File? output_directory_path
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? simple_term
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
    File? css
    String? url
    String? nav_link
    String? top
    File? help_file
    Boolean? show_frames
    Boolean? no_frames
    Boolean? separate_classes
    Int? src_code_tab_width
    String? external_api
    File? external_api_file
    String? external_api_root
    String? graph
    File? dot_path
    String? graph_font
    Int? graph_font_size
    File? pst_at
    Boolean? fail_on_error
    Boolean? fail_on_warning
    Boolean? fail_on_docstring_warning
    String output_dot
    String executable_dot
    String graphs_dot
  }
  command <<<
    epydoc \
      ~{output_dot} \
      ~{executable_dot} \
      ~{graphs_dot} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_directory_path) then ("--output " +  '"' + output_directory_path + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (simple_term) then "--simple-term" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (latex) then "--latex" else ""} \
      ~{if (dvi) then "--dvi" else ""} \
      ~{if (ps) then "--ps" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (pickle) then "--pickle" else ""} \
      ~{if defined(doc_format) then ("--docformat " +  '"' + doc_format + '"') else ""} \
      ~{if (parse_only) then "--parse-only" else ""} \
      ~{if (introspect_only) then "--introspect-only" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_introspect) then ("--exclude-introspect " +  '"' + exclude_introspect + '"') else ""} \
      ~{if defined(exclude_parse) then ("--exclude-parse " +  '"' + exclude_parse + '"') else ""} \
      ~{if defined(inheritance) then ("--inheritance " +  '"' + inheritance + '"') else ""} \
      ~{if (show_private) then "--show-private" else ""} \
      ~{if (no_private) then "--no-private" else ""} \
      ~{if (show_imports) then "--show-imports" else ""} \
      ~{if (no_imports) then "--no-imports" else ""} \
      ~{if (show_source_code) then "--show-sourcecode" else ""} \
      ~{if (no_source_code) then "--no-sourcecode" else ""} \
      ~{if (include_log) then "--include-log" else ""} \
      ~{if (redundant_details) then "--redundant-details" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(css) then ("--css " +  '"' + css + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(nav_link) then ("--navlink " +  '"' + nav_link + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(help_file) then ("--help-file " +  '"' + help_file + '"') else ""} \
      ~{if (show_frames) then "--show-frames" else ""} \
      ~{if (no_frames) then "--no-frames" else ""} \
      ~{if (separate_classes) then "--separate-classes" else ""} \
      ~{if defined(src_code_tab_width) then ("--src-code-tab-width " +  '"' + src_code_tab_width + '"') else ""} \
      ~{if defined(external_api) then ("--external-api " +  '"' + external_api + '"') else ""} \
      ~{if defined(external_api_file) then ("--external-api-file " +  '"' + external_api_file + '"') else ""} \
      ~{if defined(external_api_root) then ("--external-api-root " +  '"' + external_api_root + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(dot_path) then ("--dotpath " +  '"' + dot_path + '"') else ""} \
      ~{if defined(graph_font) then ("--graph-font " +  '"' + graph_font + '"') else ""} \
      ~{if defined(graph_font_size) then ("--graph-font-size " +  '"' + graph_font_size + '"') else ""} \
      ~{if defined(pst_at) then ("--pstat " +  '"' + pst_at + '"') else ""} \
      ~{if (fail_on_error) then "--fail-on-error" else ""} \
      ~{if (fail_on_warning) then "--fail-on-warning" else ""} \
      ~{if (fail_on_docstring_warning) then "--fail-on-docstring-warning" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "A configuration file, specifying additional OPTIONS\\nand/or NAMES.  This option may be repeated."
    output_directory_path: "The output directory.  If PATH does not exist, then it\\nwill be created."
    quiet: "Decrease the verbosity."
    verbose: "Increase the verbosity."
    debug: "Show full tracebacks for internal errors."
    simple_term: "Do not try to use color or cursor control when\\ndisplaying the progress bar, warnings, or errors."
    html: "Write HTML output."
    text: "Write plaintext output. (not implemented yet)"
    latex: "Write LaTeX output."
    dvi: "Write DVI output."
    ps: "Write Postscript output."
    pdf: "Write PDF output."
    check: "Check completeness of docs."
    pickle: "Write the documentation to a pickle file."
    doc_format: "The default markup language for docstrings.  Defaults\\nto \\\"epytext\\\"."
    parse_only: "Get all information from parsing (don't introspect)"
    introspect_only: "Get all information from introspecting (don't parse)"
    exclude: "Exclude modules whose dotted name matches the regular\\nexpression PATTERN"
    exclude_introspect: "Exclude introspection of modules whose dotted name\\nmatches the regular expression PATTERN"
    exclude_parse: "Exclude parsing of modules whose dotted name matches\\nthe regular expression PATTERN"
    inheritance: "The format for showing inheritance objects.  STYLE\\nshould be one of: grouped, listed, included."
    show_private: "Include private variables in the output. (default)"
    no_private: "Do not include private variables in the output."
    show_imports: "List each module's imports."
    no_imports: "Do not list each module's imports. (default)"
    show_source_code: "Include source code with syntax highlighting in the\\nHTML output. (default)"
    no_source_code: "Do not include source code with syntax highlighting in\\nthe HTML output."
    include_log: "Include a page with the process log (epydoc-log.html)"
    redundant_details: "Include values in the details lists even if all info\\nabout them is already provided by the summary table."
    name: "The documented project's name (for the navigation\\nbar)."
    css: "The CSS stylesheet.  STYLESHEET can be either a\\nbuiltin stylesheet or the name of a CSS file."
    url: "The documented project's URL (for the navigation bar)."
    nav_link: "HTML code for a navigation link to place in the\\nnavigation bar."
    top: "The \\\"top\\\" page for the HTML documentation.  PAGE can\\nbe a URL, the name of a module or class, or one of the\\nspecial names \\\"trees.html\\\", \\\"indices.html\\\", or\\n\\\"help.html\\\""
    help_file: "An alternate help file.  FILE should contain the body\\nof an HTML file -- navigation bars will be added to\\nit."
    show_frames: "Include frames in the HTML output. (default)"
    no_frames: "Do not include frames in the HTML output."
    separate_classes: "When generating LaTeX or PDF output, list each class\\nin its own section, instead of listing them under\\ntheir containing module."
    src_code_tab_width: "When generating HTML output, sets the number of spaces\\neach tab in source code listings is replaced with."
    external_api: "Define a new API document.  A new interpreted text\\nrole NAME will be added."
    external_api_file: ":FILENAME\\nUse records in FILENAME to resolve objects in the API\\nnamed NAME."
    external_api_root: ":STRING\\nUse STRING as prefix for the URL generated from the\\nAPI NAME."
    graph: "Include graphs of type GRAPHTYPE in the generated"
    dot_path: "The path to the Graphviz 'dot' executable."
    graph_font: "Specify the font used to generate Graphviz graphs.\\n(e.g., helvetica or times)."
    graph_font_size: "Specify the font size used to generate Graphviz\\ngraphs, in points."
    pst_at: "A pstat output file, to be used in generating call"
    fail_on_error: "Return a non-zero exit status, indicating failure, if\\nany errors are encountered."
    fail_on_warning: "Return a non-zero exit status, indicating failure, if\\nany errors or warnings are encountered (not including\\ndocstring warnings)."
    fail_on_docstring_warning: "Return a non-zero exit status, indicating failure, if\\nany errors or warnings are encountered (including\\ndocstring warnings).\\n"
    output_dot: "Graphs are generated using the Graphviz dot"
    executable_dot: "If this executable is not on the path,"
    graphs_dot: "Return Value Options:"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
    File out_pst_at = "${in_pst_at}"
  }
}