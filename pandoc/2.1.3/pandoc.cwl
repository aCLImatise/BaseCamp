class: CommandLineTool
id: ../../../pandoc.cwl
inputs:
- id: in_from
  doc: ''
  type: string
  inputBinding:
    prefix: --from
- id: in_write
  doc: ''
  type: string
  inputBinding:
    prefix: --write
- id: in__outputfile
  doc: --output=FILE
  type: File
  inputBinding:
    prefix: -o
- id: in_data_dir
  doc: ''
  type: Directory
  inputBinding:
    prefix: --data-dir
- id: in_base_header_level
  doc: ''
  type: long
  inputBinding:
    prefix: --base-header-level
- id: in_strip_empty_paragraphs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --strip-empty-paragraphs
- id: in_indented_code_classes
  doc: ''
  type: string
  inputBinding:
    prefix: --indented-code-classes
- id: in__filterprogram
  doc: --filter=PROGRAM
  type: string
  inputBinding:
    prefix: -F
- id: in_lua_filter
  doc: ''
  type: File
  inputBinding:
    prefix: --lua-filter
- id: in__preservetabs
  doc: --preserve-tabs
  type: boolean
  inputBinding:
    prefix: -p
- id: in_tab_stop
  doc: ''
  type: long
  inputBinding:
    prefix: --tab-stop
- id: in_track_changes
  doc: '|reject|all'
  type: string
  inputBinding:
    prefix: --track-changes
- id: in_file_scope
  doc: ''
  type: boolean
  inputBinding:
    prefix: --file-scope
- id: in_extract_media
  doc: ''
  type: File
  inputBinding:
    prefix: --extract-media
- id: in__standalone
  doc: --standalone
  type: boolean
  inputBinding:
    prefix: -s
- id: in_template
  doc: ''
  type: File
  inputBinding:
    prefix: --template
- id: in_var_16
  doc: '[:VALUE]        --metadata=KEY[:VALUE]'
  type: string
  inputBinding:
    prefix: -M
- id: in_var_17
  doc: '[:VALUE]        --variable=KEY[:VALUE]'
  type: string
  inputBinding:
    prefix: -V
- id: in__printdefaulttemplateformat
  doc: --print-default-template=FORMAT
  type: string
  inputBinding:
    prefix: -D
- id: in_print_default_data_file
  doc: ''
  type: File
  inputBinding:
    prefix: --print-default-data-file
- id: in_print_highlight_style
  doc: '|FILE'
  type: File
  inputBinding:
    prefix: --print-highlight-style
- id: in_dpi
  doc: ''
  type: long
  inputBinding:
    prefix: --dpi
- id: in_eol
  doc: '|lf|native'
  type: string
  inputBinding:
    prefix: --eol
- id: in_wrap
  doc: '|none|preserve'
  type: string
  inputBinding:
    prefix: --wrap
- id: in_columns
  doc: ''
  type: long
  inputBinding:
    prefix: --columns
- id: in_strip_comments
  doc: ''
  type: boolean
  inputBinding:
    prefix: --strip-comments
- id: in_table_of_contents
  doc: ''
  type: boolean
  inputBinding:
    prefix: --table-of-contents
- id: in_toc_depth
  doc: ''
  type: long
  inputBinding:
    prefix: --toc-depth
- id: in_no_highlight
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-highlight
- id: in_highlight_style
  doc: '|FILE'
  type: File
  inputBinding:
    prefix: --highlight-style
- id: in_syntax_definition
  doc: ''
  type: File
  inputBinding:
    prefix: --syntax-definition
- id: in__includeinheaderfile
  doc: --include-in-header=FILE
  type: File
  inputBinding:
    prefix: -H
- id: in__includebeforebodyfile
  doc: --include-before-body=FILE
  type: File
  inputBinding:
    prefix: -B
- id: in__includeafterbodyfile
  doc: --include-after-body=FILE
  type: File
  inputBinding:
    prefix: -A
- id: in_resource_path
  doc: ''
  type: File
  inputBinding:
    prefix: --resource-path
- id: in_request_header
  doc: :VALUE
  type: string
  inputBinding:
    prefix: --request-header
- id: in_self_contained
  doc: ''
  type: boolean
  inputBinding:
    prefix: --self-contained
- id: in_html_q_tags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --html-q-tags
- id: in_ascii
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ascii
- id: in_reference_links
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reference-links
- id: in_reference_location
  doc: '|section|document'
  type: string
  inputBinding:
    prefix: --reference-location
- id: in_atx_headers
  doc: ''
  type: boolean
  inputBinding:
    prefix: --atx-headers
- id: in_top_level_division
  doc: '|chapter|part'
  type: string
  inputBinding:
    prefix: --top-level-division
- id: in__numbersections
  doc: --number-sections
  type: boolean
  inputBinding:
    prefix: -N
- id: in_number_offset
  doc: ''
  type: long
  inputBinding:
    prefix: --number-offset
- id: in_listings
  doc: ''
  type: boolean
  inputBinding:
    prefix: --listings
- id: in__incremental
  doc: --incremental
  type: boolean
  inputBinding:
    prefix: -i
- id: in_slide_level
  doc: ''
  type: long
  inputBinding:
    prefix: --slide-level
- id: in_section_divs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --section-divs
- id: in_default_image_extension
  doc: ''
  type: string
  inputBinding:
    prefix: --default-image-extension
- id: in_email_obfuscation
  doc: '|javascript|references'
  type: string
  inputBinding:
    prefix: --email-obfuscation
- id: in_id_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --id-prefix
- id: in__titleprefixstring
  doc: --title-prefix=STRING
  type: string
  inputBinding:
    prefix: -T
- id: in__cssurl
  doc: --css=URL
  type: string
  inputBinding:
    prefix: -c
- id: in_reference_doc
  doc: ''
  type: File
  inputBinding:
    prefix: --reference-doc
- id: in_epub_subdirectory
  doc: ''
  type: string
  inputBinding:
    prefix: --epub-subdirectory
- id: in_epub_cover_image
  doc: ''
  type: File
  inputBinding:
    prefix: --epub-cover-image
- id: in_epub_metadata
  doc: ''
  type: File
  inputBinding:
    prefix: --epub-metadata
- id: in_epub_embed_font
  doc: ''
  type: File
  inputBinding:
    prefix: --epub-embed-font
- id: in_epub_chapter_level
  doc: ''
  type: long
  inputBinding:
    prefix: --epub-chapter-level
- id: in_pdf_engine
  doc: ''
  type: string
  inputBinding:
    prefix: --pdf-engine
- id: in_pdf_engine_opt
  doc: ''
  type: string
  inputBinding:
    prefix: --pdf-engine-opt
- id: in_bibliography
  doc: ''
  type: File
  inputBinding:
    prefix: --bibliography
- id: in_csl
  doc: ''
  type: File
  inputBinding:
    prefix: --csl
- id: in_citation_abbreviations
  doc: ''
  type: File
  inputBinding:
    prefix: --citation-abbreviations
- id: in_natbib
  doc: ''
  type: boolean
  inputBinding:
    prefix: --natbib
- id: in_bib_latex
  doc: ''
  type: boolean
  inputBinding:
    prefix: --biblatex
- id: in_mathml
  doc: ''
  type: boolean
  inputBinding:
    prefix: --mathml
- id: in_web_tex
  doc: '[=URL]'
  type: boolean
  inputBinding:
    prefix: --webtex
- id: in_math_jax
  doc: '[=URL]'
  type: boolean
  inputBinding:
    prefix: --mathjax
- id: in_kate_x
  doc: '[=URL]'
  type: boolean
  inputBinding:
    prefix: --katex
- id: in_var_71
  doc: '[URL]               --latexmathml[=URL], --asciimathml[=URL]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mime_tex
  doc: '[=URL]'
  type: boolean
  inputBinding:
    prefix: --mimetex
- id: in_js_math
  doc: '[=URL]'
  type: boolean
  inputBinding:
    prefix: --jsmath
- id: in_glad_tex
  doc: ''
  type: boolean
  inputBinding:
    prefix: --gladtex
- id: in_abbreviations
  doc: ''
  type: File
  inputBinding:
    prefix: --abbreviations
- id: in_trace
  doc: ''
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_dump_args
  doc: ''
  type: boolean
  inputBinding:
    prefix: --dump-args
- id: in_ignore_args
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignore-args
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fail_if_warnings
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fail-if-warnings
- id: in_log
  doc: ''
  type: File
  inputBinding:
    prefix: --log
- id: in_bash_completion
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bash-completion
- id: in_list_input_formats
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list-input-formats
- id: in_list_output_formats
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list-output-formats
- id: in_list_extensions
  doc: '[=FORMAT]'
  type: boolean
  inputBinding:
    prefix: --list-extensions
- id: in_list_highlight_languages
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list-highlight-languages
- id: in_list_highlight_styles
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list-highlight-styles
- id: in__version
  doc: --version
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile
  doc: --output=FILE
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile)
cwlVersion: v1.1
baseCommand:
- pandoc
