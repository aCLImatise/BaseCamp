version 1.0

task MimoddInfo {
  input {
    String ofileOfile
    Boolean verboseVerbose
    String oOFormat
  }
  command <<<
    mimodd info \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(oOFormat) then ("--oformat " +  '"' + oOFormat + '"') else ""}
  >>>
}