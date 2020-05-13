version 1.0

task Bwameth.py {
  input {
    String readReadGroup
    String setSetAsFailed
    Boolean interleavedInterleaved
    String? fastFastQs
  }
  command <<<
    bwameth.py \
      ~{fastFastQs} \
      ~{if defined(readReadGroup) then ("--read-group " +  '"' + readReadGroup + '"') else ""} \
      ~{if defined(setSetAsFailed) then ("--set-as-failed " +  '"' + setSetAsFailed + '"') else ""} \
      ~{true="--interleaved" false="" interleavedInterleaved}
  >>>
}