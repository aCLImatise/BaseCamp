version 1.0

task SegmentFst {
  input {
    String yourYour
    String? 0707
  }
  command <<<
    segmentFst \
      ~{0707} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}