version 1.0

task PoppunkSketch {
  input {
    Boolean sketchSketch
    Boolean queryQuery
    String rRFile
    String refRefDb
    String queryQueryDb
    Int minMinK
    Int maxMaxK
    String kKStep
    String sketchSketchSize
    Int minMinCount
    String cpusCpus
  }
  command <<<
    poppunk_sketch \
      ~{true="--sketch" false="" sketchSketch} \
      ~{true="--query" false="" queryQuery} \
      ~{if defined(rRFile) then ("--rfile " +  '"' + rRFile + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref-db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(queryQueryDb) then ("--query-db " +  '"' + queryQueryDb + '"') else ""} \
      ~{if defined(minMinK) then ("--min-k " +  '"' + minMinK + '"') else ""} \
      ~{if defined(maxMaxK) then ("--max-k " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(kKStep) then ("--k-step " +  '"' + kKStep + '"') else ""} \
      ~{if defined(sketchSketchSize) then ("--sketch-size " +  '"' + sketchSketchSize + '"') else ""} \
      ~{if defined(minMinCount) then ("--min-count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""}
  >>>
}