version 1.0

task MergeLmerTables.prl {
  input {
    String? noNo
    String? suchSuch
    File? fileFile
    String? orOr
    Directory? directoryDirectory
  }
  command <<<
    merge-lmer-tables.prl \
      ~{noNo} \
      ~{suchSuch} \
      ~{fileFile} \
      ~{orOr} \
      ~{directoryDirectory}
  >>>
}