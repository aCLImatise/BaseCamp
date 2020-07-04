version 1.0

task RealignPolishes {
  input {
    Boolean? actually_work_just
    String? merge
    String? m
    String? e
    String? g
    String polishes
    String somewhere
  }
  command <<<
    realignPolishes \
      ~{polishes} \
      ~{somewhere} \
      ~{true="-q" false="" actually_work_just} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    actually_work_just: ": Don't actually do the work, just count the statistics"
    merge: ""
    m: ""
    e: ""
    g: ""
    polishes: ""
    somewhere: ""
  }
}