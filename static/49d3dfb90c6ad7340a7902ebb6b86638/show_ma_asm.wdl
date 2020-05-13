version 1.0

task ShowMaAsm {
  input {
    Boolean gG
    Boolean sS
    Boolean uU
    Boolean vV
    String? uidUid
    String? asmAsmFile
    String? frgFrgFile
  }
  command <<<
    show-ma-asm \
      ~{uidUid} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU} \
      ~{true="-V" false="" vV} \
      ~{asmAsmFile} \
      ~{frgFrgFile}
  >>>
}