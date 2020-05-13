version 1.0

task ComputeMds {
  input {
    Int startStart
    Int endEnd
    String rR
    Float thThRd
    Float simSim
    File plotPlotOutName
    File outOutName
    File qQ
  }
  command <<<
    compute_mds \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(thThRd) then ("--thrd " +  '"' + thThRd + '"') else ""} \
      ~{if defined(simSim) then ("--sim " +  '"' + simSim + '"') else ""} \
      ~{if defined(plotPlotOutName) then ("--plot_outname " +  '"' + plotPlotOutName + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""}
  >>>
}