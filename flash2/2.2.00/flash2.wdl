version 1.0

task Flash2 {
  input {
    Boolean outOut
    Boolean outOut
    Boolean outOut
    Boolean outOut
    Boolean outOut
    String fragmentFragmentLenStddev
    Boolean capCapMismatchQuals
    Boolean interleavedInterleavedInput
    Boolean interleavedInterleavedOutput
    Boolean interleavedInterleaved
    Boolean tabTabDelimitedInput
    Boolean tabTabDelimitedOutput
    String outputOutputPrefix
    String outputOutputDirectory
    Boolean toToStdout
    Boolean compressCompress
    String compressCompressProg
    String compressCompressProgArgs
    String outputOutputSuffix
    String threadsThreads
    Boolean quietQuiet
  }
  command <<<
    flash2 \
      ~{true="- out" false="" outOut} \
      ~{true="- out" false="" outOut} \
      ~{true="- out" false="" outOut} \
      ~{true="- out" false="" outOut} \
      ~{true="- out" false="" outOut} \
      ~{if defined(fragmentFragmentLenStddev) then ("--fragment-len-stddev " +  '"' + fragmentFragmentLenStddev + '"') else ""} \
      ~{true="--cap-mismatch-quals" false="" capCapMismatchQuals} \
      ~{true="--interleaved-input" false="" interleavedInterleavedInput} \
      ~{true="--interleaved-output" false="" interleavedInterleavedOutput} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{true="--tab-delimited-input" false="" tabTabDelimitedInput} \
      ~{true="--tab-delimited-output" false="" tabTabDelimitedOutput} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--to-stdout" false="" toToStdout} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(compressCompressProg) then ("--compress-prog " +  '"' + compressCompressProg + '"') else ""} \
      ~{if defined(compressCompressProgArgs) then ("--compress-prog-args " +  '"' + compressCompressProgArgs + '"') else ""} \
      ~{if defined(outputOutputSuffix) then ("--output-suffix " +  '"' + outputOutputSuffix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}