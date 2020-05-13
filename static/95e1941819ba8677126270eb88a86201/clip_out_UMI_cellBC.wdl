version 1.0

task ClipOutUMICellBC.py {
  input {
    String umiUmiLen
    String bcBcLen
    String tsoTsoLen
    String umiUmiType
    String g5G5ClipSeq
    String bcBcRankFile
    String? bamBamFilename
    String? outputOutputPrefix
  }
  command <<<
    clip_out_UMI_cellBC.py \
      ~{bamBamFilename} \
      ~{if defined(umiUmiLen) then ("--umi_len " +  '"' + umiUmiLen + '"') else ""} \
      ~{if defined(bcBcLen) then ("--bc_len " +  '"' + bcBcLen + '"') else ""} \
      ~{if defined(tsoTsoLen) then ("--tso_len " +  '"' + tsoTsoLen + '"') else ""} \
      ~{if defined(umiUmiType) then ("--umi_type " +  '"' + umiUmiType + '"') else ""} \
      ~{if defined(g5G5ClipSeq) then ("--g5_clip_seq " +  '"' + g5G5ClipSeq + '"') else ""} \
      ~{if defined(bcBcRankFile) then ("--bc_rank_file " +  '"' + bcBcRankFile + '"') else ""} \
      ~{outputOutputPrefix}
  >>>
}