version 1.0

task TrimPolyTails.py {
  input {
    String inputInput
    String outputOutput
    String repeatsRepeats
    Boolean skipSkipReads
    Boolean keepKeepTooShort
    String keepKeepTooShortLength
  }
  command <<<
    trim_poly_tails.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(repeatsRepeats) then ("--repeats " +  '"' + repeatsRepeats + '"') else ""} \
      ~{true="--skip_reads" false="" skipSkipReads} \
      ~{true="--keep-too-short" false="" keepKeepTooShort} \
      ~{if defined(keepKeepTooShortLength) then ("--keep-too-short-length " +  '"' + keepKeepTooShortLength + '"') else ""}
  >>>
}