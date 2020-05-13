version 1.0

task TrimByOvl {
  input {
    File? fileFileOvl
    String? nN
  }
  command <<<
    trimByOvl \
      ~{fileFileOvl} \
      ~{nN}
  >>>
}