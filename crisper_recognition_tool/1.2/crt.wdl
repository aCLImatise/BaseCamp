version 1.0

task Crt {
  input {
    Boolean disableDisableFiles
    Boolean enableEnablePreview
    String? orOr
    String? orOr
    String? orOr
  }
  command <<<
    crt \
      ~{orOr} \
      ~{true="-disable-@files" false="" disableDisableFiles} \
      ~{true="--enable-preview" false="" enableEnablePreview} \
      ~{orOr} \
      ~{orOr}
  >>>
}