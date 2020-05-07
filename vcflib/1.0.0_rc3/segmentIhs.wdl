version 1.0

task SegmentIhs {
  input {
    String yourYour
    String? segmentSegmentFst
    String? 22
  }
  command <<<
    segmentIhs \
      ~{segmentSegmentFst} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""} \
      ~{22}
  >>>
}