version 1.0

task FilterSeq {
  input {
    String? index
    String good_dot
  }
  command <<<
    filter_seq \
      ~{good_dot} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    index: "an index file of the copy file"
    good_dot: ""
  }
}