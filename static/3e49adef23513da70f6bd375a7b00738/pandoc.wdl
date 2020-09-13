version 1.0

task Pandoc {
  input {
    String? from
    String? write
    File? _outputfile
    Directory? data_dir
    Int? base_header_level
    Boolean? strip_empty_paragraphs
    String? indented_code_classes
    String? _filterprogram
    File? lua_filter
    Boolean? _preservetabs
    Int? tab_stop
    String? track_changes
    Boolean? file_scope
    File? extract_media
    Boolean? _standalone
    File? template
    String? var_16
    String? var_17
    String? _printdefaulttemplateformat
    File? print_default_data_file
    File? print_highlight_style
    Int? dpi
    String? eol
    String? wrap
    Int? columns
    Boolean? strip_comments
    Boolean? table_of_contents
    Int? toc_depth
    Boolean? no_highlight
    File? highlight_style
    File? syntax_definition
    File? _includeinheaderfile
    File? _includebeforebodyfile
    File? _includeafterbodyfile
    File? resource_path
    String? request_header
    Boolean? self_contained
    Boolean? html_q_tags
    Boolean? ascii
    Boolean? reference_links
    String? reference_location
    Boolean? atx_headers
    String? top_level_division
    Boolean? _numbersections
    Int? number_offset
    Boolean? listings
    Boolean? _incremental
    Int? slide_level
    Boolean? section_divs
    String? default_image_extension
    String? email_obfuscation
    String? id_prefix
    String? _titleprefixstring
    String? _cssurl
    File? reference_doc
    String? epub_subdirectory
    File? epub_cover_image
    File? epub_metadata
    File? epub_embed_font
    Int? epub_chapter_level
    String? pdf_engine
    String? pdf_engine_opt
    File? bibliography
    File? csl
    File? citation_abbreviations
    Boolean? natbib
    Boolean? bib_latex
    Boolean? mathml
    Boolean? web_tex
    Boolean? math_jax
    Boolean? kate_x
    Boolean? var_71
    Boolean? mime_tex
    Boolean? js_math
    Boolean? glad_tex
    File? abbreviations
    Boolean? trace
    Boolean? dump_args
    Boolean? ignore_args
    Boolean? verbose
    Boolean? quiet
    Boolean? fail_if_warnings
    File? log
    Boolean? bash_completion
    Boolean? list_input_formats
    Boolean? list_output_formats
    Boolean? list_extensions
    Boolean? list_highlight_languages
    Boolean? list_highlight_styles
    Boolean? _version
  }
  command <<<
    pandoc \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""} \
      ~{if defined(_outputfile) then ("-o " +  '"' + _outputfile + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if defined(base_header_level) then ("--base-header-level " +  '"' + base_header_level + '"') else ""} \
      ~{if (strip_empty_paragraphs) then "--strip-empty-paragraphs" else ""} \
      ~{if defined(indented_code_classes) then ("--indented-code-classes " +  '"' + indented_code_classes + '"') else ""} \
      ~{if defined(_filterprogram) then ("-F " +  '"' + _filterprogram + '"') else ""} \
      ~{if defined(lua_filter) then ("--lua-filter " +  '"' + lua_filter + '"') else ""} \
      ~{if (_preservetabs) then "-p" else ""} \
      ~{if defined(tab_stop) then ("--tab-stop " +  '"' + tab_stop + '"') else ""} \
      ~{if defined(track_changes) then ("--track-changes " +  '"' + track_changes + '"') else ""} \
      ~{if (file_scope) then "--file-scope" else ""} \
      ~{if defined(extract_media) then ("--extract-media " +  '"' + extract_media + '"') else ""} \
      ~{if (_standalone) then "-s" else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(var_16) then ("-M " +  '"' + var_16 + '"') else ""} \
      ~{if defined(var_17) then ("-V " +  '"' + var_17 + '"') else ""} \
      ~{if defined(_printdefaulttemplateformat) then ("-D " +  '"' + _printdefaulttemplateformat + '"') else ""} \
      ~{if defined(print_default_data_file) then ("--print-default-data-file " +  '"' + print_default_data_file + '"') else ""} \
      ~{if defined(print_highlight_style) then ("--print-highlight-style " +  '"' + print_highlight_style + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(eol) then ("--eol " +  '"' + eol + '"') else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (strip_comments) then "--strip-comments" else ""} \
      ~{if (table_of_contents) then "--table-of-contents" else ""} \
      ~{if defined(toc_depth) then ("--toc-depth " +  '"' + toc_depth + '"') else ""} \
      ~{if (no_highlight) then "--no-highlight" else ""} \
      ~{if defined(highlight_style) then ("--highlight-style " +  '"' + highlight_style + '"') else ""} \
      ~{if defined(syntax_definition) then ("--syntax-definition " +  '"' + syntax_definition + '"') else ""} \
      ~{if defined(_includeinheaderfile) then ("-H " +  '"' + _includeinheaderfile + '"') else ""} \
      ~{if defined(_includebeforebodyfile) then ("-B " +  '"' + _includebeforebodyfile + '"') else ""} \
      ~{if defined(_includeafterbodyfile) then ("-A " +  '"' + _includeafterbodyfile + '"') else ""} \
      ~{if defined(resource_path) then ("--resource-path " +  '"' + resource_path + '"') else ""} \
      ~{if defined(request_header) then ("--request-header " +  '"' + request_header + '"') else ""} \
      ~{if (self_contained) then "--self-contained" else ""} \
      ~{if (html_q_tags) then "--html-q-tags" else ""} \
      ~{if (ascii) then "--ascii" else ""} \
      ~{if (reference_links) then "--reference-links" else ""} \
      ~{if defined(reference_location) then ("--reference-location " +  '"' + reference_location + '"') else ""} \
      ~{if (atx_headers) then "--atx-headers" else ""} \
      ~{if defined(top_level_division) then ("--top-level-division " +  '"' + top_level_division + '"') else ""} \
      ~{if (_numbersections) then "-N" else ""} \
      ~{if defined(number_offset) then ("--number-offset " +  '"' + number_offset + '"') else ""} \
      ~{if (listings) then "--listings" else ""} \
      ~{if (_incremental) then "-i" else ""} \
      ~{if defined(slide_level) then ("--slide-level " +  '"' + slide_level + '"') else ""} \
      ~{if (section_divs) then "--section-divs" else ""} \
      ~{if defined(default_image_extension) then ("--default-image-extension " +  '"' + default_image_extension + '"') else ""} \
      ~{if defined(email_obfuscation) then ("--email-obfuscation " +  '"' + email_obfuscation + '"') else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(_titleprefixstring) then ("-T " +  '"' + _titleprefixstring + '"') else ""} \
      ~{if defined(_cssurl) then ("-c " +  '"' + _cssurl + '"') else ""} \
      ~{if defined(reference_doc) then ("--reference-doc " +  '"' + reference_doc + '"') else ""} \
      ~{if defined(epub_subdirectory) then ("--epub-subdirectory " +  '"' + epub_subdirectory + '"') else ""} \
      ~{if defined(epub_cover_image) then ("--epub-cover-image " +  '"' + epub_cover_image + '"') else ""} \
      ~{if defined(epub_metadata) then ("--epub-metadata " +  '"' + epub_metadata + '"') else ""} \
      ~{if defined(epub_embed_font) then ("--epub-embed-font " +  '"' + epub_embed_font + '"') else ""} \
      ~{if defined(epub_chapter_level) then ("--epub-chapter-level " +  '"' + epub_chapter_level + '"') else ""} \
      ~{if defined(pdf_engine) then ("--pdf-engine " +  '"' + pdf_engine + '"') else ""} \
      ~{if defined(pdf_engine_opt) then ("--pdf-engine-opt " +  '"' + pdf_engine_opt + '"') else ""} \
      ~{if defined(bibliography) then ("--bibliography " +  '"' + bibliography + '"') else ""} \
      ~{if defined(csl) then ("--csl " +  '"' + csl + '"') else ""} \
      ~{if defined(citation_abbreviations) then ("--citation-abbreviations " +  '"' + citation_abbreviations + '"') else ""} \
      ~{if (natbib) then "--natbib" else ""} \
      ~{if (bib_latex) then "--biblatex" else ""} \
      ~{if (mathml) then "--mathml" else ""} \
      ~{if (web_tex) then "--webtex" else ""} \
      ~{if (math_jax) then "--mathjax" else ""} \
      ~{if (kate_x) then "--katex" else ""} \
      ~{if (var_71) then "-m" else ""} \
      ~{if (mime_tex) then "--mimetex" else ""} \
      ~{if (js_math) then "--jsmath" else ""} \
      ~{if (glad_tex) then "--gladtex" else ""} \
      ~{if defined(abbreviations) then ("--abbreviations " +  '"' + abbreviations + '"') else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (dump_args) then "--dump-args" else ""} \
      ~{if (ignore_args) then "--ignore-args" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (fail_if_warnings) then "--fail-if-warnings" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (bash_completion) then "--bash-completion" else ""} \
      ~{if (list_input_formats) then "--list-input-formats" else ""} \
      ~{if (list_output_formats) then "--list-output-formats" else ""} \
      ~{if (list_extensions) then "--list-extensions" else ""} \
      ~{if (list_highlight_languages) then "--list-highlight-languages" else ""} \
      ~{if (list_highlight_styles) then "--list-highlight-styles" else ""} \
      ~{if (_version) then "-v" else ""}
  >>>
  parameter_meta {
    from: ""
    write: ""
    _outputfile: "--output=FILE"
    data_dir: ""
    base_header_level: ""
    strip_empty_paragraphs: ""
    indented_code_classes: ""
    _filterprogram: "--filter=PROGRAM"
    lua_filter: ""
    _preservetabs: "--preserve-tabs"
    tab_stop: ""
    track_changes: "|reject|all"
    file_scope: ""
    extract_media: ""
    _standalone: "--standalone"
    template: ""
    var_16: "[:VALUE]        --metadata=KEY[:VALUE]"
    var_17: "[:VALUE]        --variable=KEY[:VALUE]"
    _printdefaulttemplateformat: "--print-default-template=FORMAT"
    print_default_data_file: ""
    print_highlight_style: "|FILE"
    dpi: ""
    eol: "|lf|native"
    wrap: "|none|preserve"
    columns: ""
    strip_comments: ""
    table_of_contents: ""
    toc_depth: ""
    no_highlight: ""
    highlight_style: "|FILE"
    syntax_definition: ""
    _includeinheaderfile: "--include-in-header=FILE"
    _includebeforebodyfile: "--include-before-body=FILE"
    _includeafterbodyfile: "--include-after-body=FILE"
    resource_path: ""
    request_header: ":VALUE"
    self_contained: ""
    html_q_tags: ""
    ascii: ""
    reference_links: ""
    reference_location: "|section|document"
    atx_headers: ""
    top_level_division: "|chapter|part"
    _numbersections: "--number-sections"
    number_offset: ""
    listings: ""
    _incremental: "--incremental"
    slide_level: ""
    section_divs: ""
    default_image_extension: ""
    email_obfuscation: "|javascript|references"
    id_prefix: ""
    _titleprefixstring: "--title-prefix=STRING"
    _cssurl: "--css=URL"
    reference_doc: ""
    epub_subdirectory: ""
    epub_cover_image: ""
    epub_metadata: ""
    epub_embed_font: ""
    epub_chapter_level: ""
    pdf_engine: ""
    pdf_engine_opt: ""
    bibliography: ""
    csl: ""
    citation_abbreviations: ""
    natbib: ""
    bib_latex: ""
    mathml: ""
    web_tex: "[=URL]"
    math_jax: "[=URL]"
    kate_x: "[=URL]"
    var_71: "[URL]               --latexmathml[=URL], --asciimathml[=URL]"
    mime_tex: "[=URL]"
    js_math: "[=URL]"
    glad_tex: ""
    abbreviations: ""
    trace: ""
    dump_args: ""
    ignore_args: ""
    verbose: ""
    quiet: ""
    fail_if_warnings: ""
    log: ""
    bash_completion: ""
    list_input_formats: ""
    list_output_formats: ""
    list_extensions: "[=FORMAT]"
    list_highlight_languages: ""
    list_highlight_styles: ""
    _version: "--version"
  }
  output {
    File out_stdout = stdout()
    File out__outputfile = "${in__outputfile}"
  }
}