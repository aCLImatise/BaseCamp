version 1.0

task MergeSam.py {
  input {
    String inputInput
    String outputOutput
    Boolean forwardForwardReverse
    String mismatchesMismatchesLong
    String mismatchesMismatchesShort
    String shortShort
  }
  command <<<
    merge-sam.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--forward-reverse" false="" forwardForwardReverse} \
      ~{if defined(mismatchesMismatchesLong) then ("--mismatches-long " +  '"' + mismatchesMismatchesLong + '"') else ""} \
      ~{if defined(mismatchesMismatchesShort) then ("--mismatches-short " +  '"' + mismatchesMismatchesShort + '"') else ""} \
      ~{if defined(shortShort) then ("--short " +  '"' + shortShort + '"') else ""}
  >>>
}