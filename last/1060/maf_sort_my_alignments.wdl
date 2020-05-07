version 1.0

task MafSortMyAlignments.maf {
  input {
    String? noNo
    String? suchSuch
    File? fileFile
    String? orOr
    Directory? directoryDirectory
  }
  command <<<
    maf-sort my-alignments.maf \
      ~{noNo} \
      ~{suchSuch} \
      ~{fileFile} \
      ~{orOr} \
      ~{directoryDirectory}
  >>>
}