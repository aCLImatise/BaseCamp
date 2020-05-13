version 1.0

task SnpFilter.py {
  input {
    Boolean forceForce
    String vcfVcfName
    String edgeEdgeLength
    Boolean wW
    Boolean mM
    String outOutGroup
    String modeMode
    Boolean vV
    String? sampleSampleDirsFile
    String? refRefFastAFile
  }
  command <<<
    snp_filter.py \
      ~{sampleSampleDirsFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(vcfVcfName) then ("--vcfname " +  '"' + vcfVcfName + '"') else ""} \
      ~{if defined(edgeEdgeLength) then ("--edge_length " +  '"' + edgeEdgeLength + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-m" false="" mM} \
      ~{if defined(outOutGroup) then ("--out_group " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{refRefFastAFile}
  >>>
}