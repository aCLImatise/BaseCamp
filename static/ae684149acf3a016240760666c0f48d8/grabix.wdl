version 1.0

task Grabix {
  input {
    String? indexIndex
    String? bgBgZfFile
  }
  command <<<
    grabix \
      ~{indexIndex} \
      ~{bgBgZfFile}
  >>>
}