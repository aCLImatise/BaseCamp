version 1.0

task JmztabM {
  input {
    String checkCheck
    Boolean fromFromJson
    String levelLevel
    Boolean messageMessage
    String outfileOutfile
    String checkCheckSemantic
    Boolean toToJson
  }
  command <<<
    jmztab-m \
      ~{if defined(checkCheck) then ("--check " +  '"' + checkCheck + '"') else ""} \
      ~{true="--fromJson" false="" fromFromJson} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{true="--message" false="" messageMessage} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(checkCheckSemantic) then ("--checkSemantic " +  '"' + checkCheckSemantic + '"') else ""} \
      ~{true="--toJson" false="" toToJson}
  >>>
}