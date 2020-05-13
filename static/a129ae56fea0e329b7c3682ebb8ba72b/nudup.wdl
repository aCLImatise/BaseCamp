version 1.0

task Nudup.py {
  input {
    String fF
    String outOut
    String startStart
    Int lengthLength
    String tT
    Boolean oldOldSamTools
    Boolean rmdRmdUpOnly
  }
  command <<<
    nudup.py \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="--old-samtools" false="" oldOldSamTools} \
      ~{true="--rmdup-only" false="" rmdRmdUpOnly}
  >>>
}