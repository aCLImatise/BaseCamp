version 1.0

task Fumultirelabel {
  input {
    Boolean? basename
    String? rename
    Boolean? numeric_postfix
    Boolean? total_postfix
    String? split_basename
    String? separator
    Boolean? no_comments
    String? comment_separator
    String separate
    String strip
    String comment
    String out
    String from
    String name
    String with
    String char
  }
  command <<<
    fu_multirelabel \
      ~{separate} \
      ~{strip} \
      ~{comment} \
      ~{out} \
      ~{from} \
      ~{name} \
      ~{with} \
      ~{char} \
      ~{if (basename) then "--basename" else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if (numeric_postfix) then "--numeric-postfix" else ""} \
      ~{if (total_postfix) then "--total-postfix" else ""} \
      ~{if defined(split_basename) then ("--split-basename " +  '"' + split_basename + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (no_comments) then "--no-comments" else ""} \
      ~{if defined(comment_separator) then ("--comment-separator " +  '"' + comment_separator + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.0--h38613fd_1"
  }
  parameter_meta {
    basename: "Prepend file basename to sequence"
    rename: "Replace original name with NAME"
    numeric_postfix: "Add progressive number (reset at each new basename)"
    total_postfix: "Add progressive number (without resetting at each new input file)"
    split_basename: "Remove the final part of basename after CHAR [default: .]"
    separator: "Separator between prefix, name, suffix [default: _]"
    no_comments: "Strip out comments"
    comment_separator: "Separate comment from name with CHAR [default: TAB]"
    separate: ""
    strip: ""
    comment: ""
    out: ""
    from: ""
    name: ""
    with: ""
    char: ""
  }
  output {
    File out_stdout = stdout()
  }
}