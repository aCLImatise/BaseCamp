version 1.0

task HiliveBuild {
  input {
    Boolean lL
    Boolean iI
    Boolean oO
    Boolean doDoNotConvertSpaces
    Boolean trimTrimAfterSpace
  }
  command <<<
    hilive-build \
      ~{true="-l" false="" lL} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="--do-not-convert-spaces" false="" doDoNotConvertSpaces} \
      ~{true="--trim-after-space" false="" trimTrimAfterSpace}
  >>>
}