version 1.0

task FastutilsRevcomp {
  input {
    String inIn
    String outOut
    Int linewidthLinewidth
    Boolean fastFastQ
    Boolean commentComment
    Boolean lexLex
  }
  command <<<
    fastutils revcomp \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(linewidthLinewidth) then ("--lineWidth " +  '"' + linewidthLinewidth + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--comment" false="" commentComment} \
      ~{true="--lex" false="" lexLex}
  >>>
}