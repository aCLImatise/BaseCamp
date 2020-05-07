version 1.0

task DownloadPubmed {
  input {
    String? noNo
    String? suchSuch
    File? fileFile
    String? orOr
    Directory? directoryDirectory
  }
  command <<<
    download-pubmed \
      ~{noNo} \
      ~{suchSuch} \
      ~{fileFile} \
      ~{orOr} \
      ~{directoryDirectory}
  >>>
}