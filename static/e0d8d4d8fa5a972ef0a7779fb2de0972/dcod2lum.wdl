version 1.0

task Dcod2lum {
  input {
    String? inInFile
    String? outOutFile
  }
  command <<<
    dcod2lum \
      ~{inInFile} \
      ~{outOutFile}
  >>>
}