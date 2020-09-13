version 1.0

task RealignPolishes {
  input {
    Boolean? actually_work_just
    String? g
    String? e
    String? m
    String? merge
    String polishes
    String somewhere
  }
  command <<<
    realignPolishes \
      ~{polishes} \
      ~{somewhere} \
      ~{if (actually_work_just) then "-q" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""}
  >>>
  parameter_meta {
    actually_work_just: ": Don't actually do the work, just count the statistics"
    g: ""
    e: ""
    m: ""
    merge: ""
    polishes: ""
    somewhere: ""
  }
  output {
    File out_stdout = stdout()
  }
}