version 1.0

task MlocarnaNnames {
  input {
    Boolean manMan
    String? fastFastAFile
  }
  command <<<
    mlocarna_nnames \
      ~{fastFastAFile} \
      ~{true="--man" false="" manMan}
  >>>
}