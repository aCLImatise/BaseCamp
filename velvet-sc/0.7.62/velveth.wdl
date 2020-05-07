version 1.0

task Velveth {
  input {
    Boolean strandStrandSpecific
    Directory? directoryDirectory
    String? hashHashLength
    File? filenameFilename
  }
  command <<<
    velveth \
      ~{directoryDirectory} \
      ~{true="-strand_specific" false="" strandStrandSpecific} \
      ~{hashHashLength} \
      ~{filenameFilename}
  >>>
}