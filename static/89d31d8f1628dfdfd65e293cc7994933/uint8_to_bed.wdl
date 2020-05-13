version 1.0

task Uint8ToBed.py {
  input {
    Boolean c2tC2t
    Boolean g2aG2a
    String chrChrSizePath
    Boolean writeWriteUnique
    Boolean wiggleWiggle
    Boolean bedBedGraph
    Boolean bedBed
    Boolean kmKmErs
    String jobJobId
    String varVarId
    String? inInDir
    String? outOutDir
    String? outOutLabel
  }
  command <<<
    uint8_to_bed.py \
      ~{inInDir} \
      ~{true="-C2T" false="" c2tC2t} \
      ~{true="-G2A" false="" g2aG2a} \
      ~{if defined(chrChrSizePath) then ("-chrsize_path " +  '"' + chrChrSizePath + '"') else ""} \
      ~{true="-WriteUnique" false="" writeWriteUnique} \
      ~{true="-wiggle" false="" wiggleWiggle} \
      ~{true="-bedGraph" false="" bedBedGraph} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-kmers" false="" kmKmErs} \
      ~{if defined(jobJobId) then ("-job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(varVarId) then ("-var_id " +  '"' + varVarId + '"') else ""} \
      ~{outOutDir} \
      ~{outOutLabel}
  >>>
}