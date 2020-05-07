version 1.0

task LaserRecalibrate {
  input {
    Boolean iI
    Boolean dD
    Boolean sS
    Boolean vV
    Boolean pP
    Boolean mM
    Boolean distantDistantPairs
    Boolean cC
    Boolean sS
    Boolean mM
    String mapqMapqCutOff
    Boolean rR
    Boolean hH
    Boolean rR
    Boolean dD
    String softSoftClipOpenCost
    String softSoftClipExtendCost
    String? insertInsertLengthDist
  }
  command <<<
    laser-recalibrate \
      ~{insertInsertLengthDist} \
      ~{true="-I" false="" iI} \
      ~{true="-D" false="" dD} \
      ~{true="-S" false="" sS} \
      ~{true="-V" false="" vV} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="--distant-pairs" false="" distantDistantPairs} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-M" false="" mM} \
      ~{if defined(mapqMapqCutOff) then ("--mapq_cutoff " +  '"' + mapqMapqCutOff + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="-H" false="" hH} \
      ~{true="-r" false="" rR} \
      ~{true="-d" false="" dD} \
      ~{if defined(softSoftClipOpenCost) then ("--soft_clip_open_cost " +  '"' + softSoftClipOpenCost + '"') else ""} \
      ~{if defined(softSoftClipExtendCost) then ("--soft_clip_extend_cost " +  '"' + softSoftClipExtendCost + '"') else ""}
  >>>
}