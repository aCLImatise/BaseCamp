version 1.0

task BiodbToJson.pl {
  input {
    String outOut
    Boolean compressCompress
  }
  command <<<
    biodb-to-json.pl \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--compress" false="" compressCompress}
  >>>
}