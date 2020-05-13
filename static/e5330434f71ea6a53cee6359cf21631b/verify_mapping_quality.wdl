version 1.0

task VerifyMappingQuality.pl {
  input {
    Boolean outputOutput
    Boolean outOutStrains
  }
  command <<<
    verify_mapping_quality.pl \
      ~{true="--output" false="" outputOutput} \
      ~{true="--out_strains" false="" outOutStrains}
  >>>
}