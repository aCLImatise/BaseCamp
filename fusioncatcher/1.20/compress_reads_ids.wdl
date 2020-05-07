version 1.0

task CompressReadsIds.py {
  input {
    String inputInput
    String outputOutput
    String countCountReads
    Boolean no12No12
    Boolean notNotInterleaved
    Boolean lowercaseLowercase
  }
  command <<<
    compress-reads-ids.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(countCountReads) then ("--count-reads " +  '"' + countCountReads + '"') else ""} \
      ~{true="--no12" false="" no12No12} \
      ~{true="--not-interleaved" false="" notNotInterleaved} \
      ~{true="--lowercase" false="" lowercaseLowercase}
  >>>
}