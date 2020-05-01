version 1.0

task Velveth {
  input {
    Boolean interleavedInterleaved
    Boolean separateSeparate
    Boolean strandStrandSpecific
    Boolean reuseReuseSequences
    Boolean reuseReuseBinary
    Boolean noNoHash
    Boolean createCreateBinary
    Directory? directoryDirectory
    String? hashHashLength
    File? filenameFilename
  }
  command <<<
    velveth \
      ~{directoryDirectory} \
      ~{true="-interleaved" false="" interleavedInterleaved} \
      ~{true="-separate" false="" separateSeparate} \
      ~{true="-strand_specific" false="" strandStrandSpecific} \
      ~{true="-reuse_Sequences" false="" reuseReuseSequences} \
      ~{true="-reuse_binary" false="" reuseReuseBinary} \
      ~{true="-noHash" false="" noNoHash} \
      ~{true="-create_binary" false="" createCreateBinary} \
      ~{hashHashLength} \
      ~{filenameFilename}
  >>>
}