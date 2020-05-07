version 1.0

task ParseSdrfValidateSdrf {
  input {
    String sdSdRfFile
    Boolean templateTemplate
    Boolean checkCheckMs
    String? optionsOptions
  }
  command <<<
    parse_sdrf validate-sdrf \
      ~{optionsOptions} \
      ~{if defined(sdSdRfFile) then ("--sdrf_file " +  '"' + sdSdRfFile + '"') else ""} \
      ~{true="--template" false="" templateTemplate} \
      ~{true="--check_ms" false="" checkCheckMs}
  >>>
}