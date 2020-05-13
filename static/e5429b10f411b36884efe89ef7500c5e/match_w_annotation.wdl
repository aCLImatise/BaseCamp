version 1.0

task MatchWAnnotation.py {
  input {
    String? matchMatch
    String? alignmentAlignment
    String? withWith
    String? annotationAnnotation
    String? categorizeCategorize
    String? andAnd
    String? reportReport
  }
  command <<<
    match_w_annotation.py \
      ~{matchMatch} \
      ~{alignmentAlignment} \
      ~{withWith} \
      ~{annotationAnnotation} \
      ~{categorizeCategorize} \
      ~{andAnd} \
      ~{reportReport}
  >>>
}