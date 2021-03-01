version 1.0

task ReadSeqTostk {
  input {
    File? header
    Boolean? remove_ref
    String usage
  }
  command <<<
    ReadSeq to_stk \
      ~{usage} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if (remove_ref) then "--removeref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: "the header of the output file in case a differenet\\nstk version, default is # STOCKHOLM 1.0"
    remove_ref: "is set, do not write the GC reference sequences to\\noutput\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    File out_header = "${in_header}"
  }
}