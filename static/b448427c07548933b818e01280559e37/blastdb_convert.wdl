version 1.0

task BlastdbConvert {
  input {
    String outOut
  }
  command <<<
    blastdb_convert \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""}
  >>>
}