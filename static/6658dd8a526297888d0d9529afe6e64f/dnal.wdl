version 1.0

task Dnal {
  input {
    Boolean dyDyDebug
    Boolean palPalDebug
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
    Boolean errorErrorStyle
  }
  command <<<
    dnal \
      ~{true="-dydebug" false="" dyDyDebug} \
      ~{true="-paldebug" false="" palPalDebug} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog} \
      ~{true="-errorstyle" false="" errorErrorStyle}
  >>>
}