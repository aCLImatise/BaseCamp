version 1.0

task GsutilHelpRsync {
  input {
    String aA
    Boolean cC
    Boolean cC
    Boolean dD
    Boolean eE
    Boolean nN
    Boolean pP
    Boolean pP
    Boolean rR
    Boolean uU
    String xX
  }
  command <<<
    gsutil help rsync \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-R" false="" rR} \
      ~{true="-U" false="" uU} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}