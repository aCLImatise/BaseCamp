version 1.0

task MatecleverComputeRois {
  input {
    String dD
    Int mM
  }
  command <<<
    mateclever-compute-rois \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}