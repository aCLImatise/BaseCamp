version 1.0

task FcFetchReads {
  input {
    String baseBaseDir
    String fofFofN
    String ctgCtgId
    String outOutDir
    Int minMinCtgLenth
  }
  command <<<
    fc_fetch_reads \
      ~{if defined(baseBaseDir) then ("--base_dir " +  '"' + baseBaseDir + '"') else ""} \
      ~{if defined(fofFofN) then ("--fofn " +  '"' + fofFofN + '"') else ""} \
      ~{if defined(ctgCtgId) then ("--ctg_id " +  '"' + ctgCtgId + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(minMinCtgLenth) then ("--min_ctg_lenth " +  '"' + minMinCtgLenth + '"') else ""}
  >>>
}