version 1.0

task GcSkew {
  input {
    Boolean fF
    String lL
    String wW
    String sS
    Boolean singleSingle
    Boolean noNoPlot
  }
  command <<<
    gc_skew \
      ~{true="-f" false="" fF} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--no-plot" false="" noNoPlot}
  >>>
}