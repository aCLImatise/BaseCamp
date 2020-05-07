version 1.0

task RunAnything.pl {
  input {
    Boolean disableDisableFiles
    Boolean enableEnablePreview
    String? orOr
    String? orOr
    String? orOr
  }
  command <<<
    run_anything.pl \
      ~{orOr} \
      ~{true="-disable-@files" false="" disableDisableFiles} \
      ~{true="--enable-preview" false="" enableEnablePreview} \
      ~{orOr} \
      ~{orOr}
  >>>
}