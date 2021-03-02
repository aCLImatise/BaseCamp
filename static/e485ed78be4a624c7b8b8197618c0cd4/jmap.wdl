version 1.0

task Jmap {
  input {
    Boolean? dump
    Boolean? histo
    String? finalizer_info
    String? cl_stats
    String live
  }
  command <<<
    jmap \
      ~{live} \
      ~{if (dump) then "-dump" else ""} \
      ~{if (histo) then "-histo" else ""} \
      ~{if defined(finalizer_info) then ("-finalizerinfo " +  '"' + finalizer_info + '"') else ""} \
      ~{if defined(cl_stats) then ("-clstats " +  '"' + cl_stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dump: ""
    histo: ""
    finalizer_info: ""
    cl_stats: ""
    live: "dump only live objects; if not specified,\\nall objects in the heap are dumped."
  }
  output {
    File out_stdout = stdout()
  }
}