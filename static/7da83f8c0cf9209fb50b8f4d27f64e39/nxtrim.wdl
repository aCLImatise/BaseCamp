version 1.0

task Nxtrim {
  input {
    Boolean oO
    Boolean justJustMp
    Boolean stdoutStdout
    Boolean stdoutStdoutMp
    Boolean stdoutStdoutUn
    Boolean rfRf
    Boolean preservePreserveMp
    Boolean ignoreIgnorePf
    Boolean separateSeparate
    Boolean aggressiveAggressive
    String similaritySimilarity
    String minMinOverlap
    String minlengthMinlength
  }
  command <<<
    nxtrim \
      ~{true="-O" false="" oO} \
      ~{true="--justmp" false="" justJustMp} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--stdout-mp" false="" stdoutStdoutMp} \
      ~{true="--stdout-un" false="" stdoutStdoutUn} \
      ~{true="--rf" false="" rfRf} \
      ~{true="--preserve-mp" false="" preservePreserveMp} \
      ~{true="--ignorePF" false="" ignoreIgnorePf} \
      ~{true="--separate" false="" separateSeparate} \
      ~{true="--aggressive" false="" aggressiveAggressive} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--minoverlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""}
  >>>
}