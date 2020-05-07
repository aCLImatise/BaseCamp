version 1.0

task RunDiscoSnp++ML.sh {
  input {
    String fF
    Boolean pP
    Boolean lL
    Boolean tT
    Boolean dD
    Boolean nN
    Boolean uU
    Boolean gG
    Boolean rR
    Boolean bB
    Boolean eE
    Boolean wW
    Boolean vV
  }
  command <<<
    run_discoSnp++_ML.sh \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{true="-T" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-n" false="" nN} \
      ~{true="-u" false="" uU} \
      ~{true="-G" false="" gG} \
      ~{true="-R" false="" rR} \
      ~{true="-B" false="" bB} \
      ~{true="-e" false="" eE} \
      ~{true="-w" false="" wW} \
      ~{true="-v" false="" vV}
  >>>
}