version 1.0

task Comet.exe {
  input {
    Boolean pP
    Boolean pP
    Boolean nN
    Boolean dD
    Boolean fF
    Boolean lL
    Boolean iI
    String? orOr
    String? orOr
  }
  command <<<
    comet.exe \
      ~{orOr} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-N" false="" nN} \
      ~{true="-D" false="" dD} \
      ~{true="-F" false="" fF} \
      ~{true="-L" false="" lL} \
      ~{true="-i" false="" iI} \
      ~{orOr}
  >>>
}