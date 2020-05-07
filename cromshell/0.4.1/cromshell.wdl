version 1.0

task Cromshell {
  input {
    String tT
    Boolean wW
    Boolean pP
    Boolean xX
    Boolean cC
    Boolean uU
    String sS
    String? includedIncludedWdlZipFile
    String? emailEmail
    String? daemonDaemonServer
    String? anythingAnythingButZero
  }
  command <<<
    cromshell \
      ~{includedIncludedWdlZipFile} \
      ~{emailEmail} \
      ~{anythingAnythingButZero} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-p" false="" pP} \
      ~{true="-x" false="" xX} \
      ~{true="-c" false="" cC} \
      ~{true="-u" false="" uU} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{daemonDaemonServer}
  >>>
}