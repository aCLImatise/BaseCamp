version 1.0

task Qsignature {
  input {
    Boolean disableDisableFiles
    Boolean enableEnablePreview
    String? orOr
    String? orOr
    String? orOr
  }
  command <<<
    qsignature \
      ~{orOr} \
      ~{true="-disable-@files" false="" disableDisableFiles} \
      ~{true="--enable-preview" false="" enableEnablePreview} \
      ~{orOr} \
      ~{orOr}
  >>>
}