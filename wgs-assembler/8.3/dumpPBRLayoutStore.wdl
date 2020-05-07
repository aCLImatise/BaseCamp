version 1.0

task DumpPBRLayoutStore {
  input {
    String lL
    String? pacPacBioDumpLayout
  }
  command <<<
    dumpPBRLayoutStore \
      ~{pacPacBioDumpLayout} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}