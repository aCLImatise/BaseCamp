version 1.0

task ReadSeqToStk {
  input {
    String? header
    Boolean? remove_ref
    String usage
  }
  command <<<
    ReadSeq to-stk \
      ~{usage} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{true="--removeref" false="" remove_ref}
  >>>
  parameter_meta {
    header: "the header of the output file in case a differenet stk version, default is # STOCKHOLM 1.0"
    remove_ref: "is set, do not write the GC reference sequences to output"
    usage: ""
  }
}