version 1.0

task Legsta {
  input {
    Boolean quietQuiet
    Boolean debugDebug
    String dbDbDir
    Boolean csvCsv
    Boolean noheaderNoheader
  }
  command <<<
    legsta \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(dbDbDir) then ("--dbdir " +  '"' + dbDbDir + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--noheader" false="" noheaderNoheader}
  >>>
}