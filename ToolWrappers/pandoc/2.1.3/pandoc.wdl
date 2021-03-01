version 1.0

task Pandoc {
  input {
    String? strip_empty_paragraphs
    String? v
    File? print_default_data_file
    Int? dpi
    String? wrap
    Int? table_of_contents
    File? include_before_body
    String? reference_location
    String? top_level_division
    String? default_image_extension
    String? citation_abbreviations
    Boolean? math_jax
    Boolean? kate_x
    Boolean? m
    Boolean? mime_tex
    Boolean? js_math
  }
  command <<<
    pandoc \
      ~{if defined(strip_empty_paragraphs) then ("--strip-empty-paragraphs " +  '"' + strip_empty_paragraphs + '"') else ""} \
      ~{if defined(v) then ("-V " +  '"' + v + '"') else ""} \
      ~{if defined(print_default_data_file) then ("--print-default-data-file " +  '"' + print_default_data_file + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(table_of_contents) then ("--table-of-contents " +  '"' + table_of_contents + '"') else ""} \
      ~{if defined(include_before_body) then ("--include-before-body " +  '"' + include_before_body + '"') else ""} \
      ~{if defined(reference_location) then ("--reference-location " +  '"' + reference_location + '"') else ""} \
      ~{if defined(top_level_division) then ("--top-level-division " +  '"' + top_level_division + '"') else ""} \
      ~{if defined(default_image_extension) then ("--default-image-extension " +  '"' + default_image_extension + '"') else ""} \
      ~{if defined(citation_abbreviations) then ("--citation-abbreviations " +  '"' + citation_abbreviations + '"') else ""} \
      ~{if (math_jax) then "--mathjax" else ""} \
      ~{if (kate_x) then "--katex" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (mime_tex) then "--mimetex" else ""} \
      ~{if (js_math) then "--jsmath" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strip_empty_paragraphs: "|reject|all"
    v: "[:VALUE]        --variable=KEY[:VALUE]"
    print_default_data_file: "|FILE"
    dpi: "|lf|native"
    wrap: "|none|preserve"
    table_of_contents: "|FILE"
    include_before_body: ":VALUE"
    reference_location: "|section|document"
    top_level_division: "|chapter|part"
    default_image_extension: "|javascript|references"
    citation_abbreviations: "[=URL]"
    math_jax: "[=URL]"
    kate_x: "[=URL]"
    m: "[URL]               --latexmathml[=URL], --asciimathml[=URL]"
    mime_tex: "[=URL]"
    js_math: "[=URL]"
  }
  output {
    File out_stdout = stdout()
  }
}