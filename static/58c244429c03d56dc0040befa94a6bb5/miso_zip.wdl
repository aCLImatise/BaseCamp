version 1.0

task MisoZip {
  input {
    String compressCompress
    String uncompressUncompress
  }
  command <<<
    miso_zip \
      ~{if defined(compressCompress) then ("--compress " +  '"' + compressCompress + '"') else ""} \
      ~{if defined(uncompressUncompress) then ("--uncompress " +  '"' + uncompressUncompress + '"') else ""}
  >>>
}