version 1.0

task ReadsStats.py {
  input {
    File fastFastX
    Boolean rawRaw
    String savepathSavepath
    Boolean reportReport
    String tagTag
  }
  command <<<
    reads_stats.py \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{true="--raw" false="" rawRaw} \
      ~{if defined(savepathSavepath) then ("--savepath " +  '"' + savepathSavepath + '"') else ""} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""}
  >>>
}