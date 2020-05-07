version 1.0

task FastutilsInterleave {
  input {
    String outOut
    Boolean fastFastQ
    String separatorSeparator
  }
  command <<<
    fastutils interleave \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""}
  >>>
}