version 1.0

task MimoddVarextract {
  input {
    Boolean keepKeepAlts
    Boolean verboseVerbose
    String ofileOfile
  }
  command <<<
    mimodd varextract \
      ~{true="--keep-alts" false="" keepKeepAlts} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""}
  >>>
}