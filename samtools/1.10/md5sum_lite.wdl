version 1.0

task Md5sumLite {
  input {
    String? noNo
    String? suchSuch
    File? fileFile
    String? orOr
    Directory? directoryDirectory
  }
  command <<<
    md5sum-lite \
      ~{noNo} \
      ~{suchSuch} \
      ~{fileFile} \
      ~{orOr} \
      ~{directoryDirectory}
  >>>
}