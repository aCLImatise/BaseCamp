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
    String? ignore_case
    String? gap_size
    File? ignore_file
    File? only_file
    String? references
    Boolean? typeset_mode
    String? width
    String? option
  }
  command <<<
    ptx \
      ~{option} \
      ~{true="--auto-reference" false="" auto_reference} \
      ~{true="--traditional" false="" traditional} \
      ~{if defined(flag_truncation) then ("--flag-truncation " +  '"' + flag_truncation + '"') else ""} \
      ~{if defined(macro_name) then ("--macro-name " +  '"' + macro_name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--right-side-refs" false="" right_side_refs} \
      ~{if defined(sentence_regexp) then ("--sentence-regexp " +  '"' + sentence_regexp + '"') else ""} \
      ~{if defined(word_regexp) then ("--word-regexp " +  '"' + word_regexp + '"') else ""} \
      ~{if defined(break_file) then ("--break-file " +  '"' + break_file + '"') else ""} \
      ~{if defined(ignore_case) then ("--ignore-case " +  '"' + ignore_case + '"') else ""} \
      ~{if defined(gap_size) then ("--gap-size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(ignore_file) then ("--ignore-file " +  '"' + ignore_file + '"') else ""} \
      ~{if defined(only_file) then ("--only-file " +  '"' + only_file + '"') else ""} \
      ~{if defined(references) then ("--references " +  '"' + references + '"') else ""} \
      ~{true="--typeset-mode" false="" typeset_mode} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""}
  >>>
  parameter_meta {
    auto_reference: "output automatically generated references"
    traditional: "behave more like System V 'ptx'"
    flag_truncation: "use STRING for flagging line truncations. The default is '/'"
    macro_name: "macro name to use instead of 'xx'"
    format: "generate output as TeX directives"
    right_side_refs: "put references at right, not counted in -w"
    sentence_regexp: "for end of lines or end of sentences"
    word_regexp: "use REGEXP to match each keyword"
    break_file: "word break characters in this FILE"
    ignore_case: "lower case to upper case for sorting"
    gap_size: "gap size in columns between output fields"
    ignore_file: "read ignore word list from FILE"
    only_file: "read only word list from this FILE"
    references: "field of each line is a reference"
    typeset_mode: "- not implemented -"
    width: "output width in columns, reference excluded"
    option: ""
  }
}