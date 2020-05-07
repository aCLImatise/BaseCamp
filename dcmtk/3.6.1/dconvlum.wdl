version 1.0

task Dconvlum {
  input {
    String? inInFile
    String? outOutFile
    String? ambientAmbient
  }
  command <<<
    dconvlum \
      ~{inInFile} \
      ~{outOutFile} \
      ~{ambientAmbient}
  >>>
}