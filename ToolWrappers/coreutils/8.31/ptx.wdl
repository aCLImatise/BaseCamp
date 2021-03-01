version 1.0

task Ptx {
  input {
    Boolean? auto_reference
    Boolean? traditional
    String? flag_truncation
    String? macro_name
    String? format
    Boolean? right_side_refs
    String? sentence_regexp
    String? word_regexp
    File? break_file
    Boolean? ignore_case
    Int? gap_size
    File? ignore_file
    File? only_file
    Boolean? references
    Boolean? typeset_mode
    Int? width
  }
  command <<<
    ptx \
      ~{if (auto_reference) then "--auto-reference" else ""} \
      ~{if (traditional) then "--traditional" else ""} \
      ~{if defined(flag_truncation) then ("--flag-truncation " +  '"' + flag_truncation + '"') else ""} \
      ~{if defined(macro_name) then ("--macro-name " +  '"' + macro_name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (right_side_refs) then "--right-side-refs" else ""} \
      ~{if defined(sentence_regexp) then ("--sentence-regexp " +  '"' + sentence_regexp + '"') else ""} \
      ~{if defined(word_regexp) then ("--word-regexp " +  '"' + word_regexp + '"') else ""} \
      ~{if defined(break_file) then ("--break-file " +  '"' + break_file + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(gap_size) then ("--gap-size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(ignore_file) then ("--ignore-file " +  '"' + ignore_file + '"') else ""} \
      ~{if defined(only_file) then ("--only-file " +  '"' + only_file + '"') else ""} \
      ~{if (references) then "--references" else ""} \
      ~{if (typeset_mode) then "--typeset-mode" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    auto_reference: "output automatically generated references"
    traditional: "behave more like System V 'ptx'"
    flag_truncation: "use STRING for flagging line truncations.\\nThe default is '/'"
    macro_name: "macro name to use instead of 'xx'"
    format: "generate output as TeX directives"
    right_side_refs: "put references at right, not counted in -w"
    sentence_regexp: "for end of lines or end of sentences"
    word_regexp: "use REGEXP to match each keyword"
    break_file: "word break characters in this FILE"
    ignore_case: "fold lower case to upper case for sorting"
    gap_size: "gap size in columns between output fields"
    ignore_file: "read ignore word list from FILE"
    only_file: "read only word list from this FILE"
    references: "first field of each line is a reference"
    typeset_mode: "- not implemented -"
    width: "output width in columns, reference excluded"
  }
  output {
    File out_stdout = stdout()
  }
}