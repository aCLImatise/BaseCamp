version 1.0

task MergeCounts {
  input {
    String? noNo
    String? suchSuch
    File? fileFile
    String? orOr
    Directory? directoryDirectory
  }
  command <<<
    mergeCounts \
      ~{noNo} \
      ~{suchSuch} \
      ~{fileFile} \
      ~{orOr} \
      ~{directoryDirectory}
  >>>
}