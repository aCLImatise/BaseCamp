version 1.0

task FilterSeq {
  input {
    String indexIndex
  }
  command <<<
    filter_seq \
      ~{if defined(indexIndex) then ("-index " +  '"' + indexIndex + '"') else ""}
  >>>
}