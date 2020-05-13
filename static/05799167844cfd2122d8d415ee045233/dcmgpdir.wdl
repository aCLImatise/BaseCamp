version 1.0

task Dcmgpdir {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean aA
    Boolean noNoXferCheck
    Boolean wW
    Boolean nbNb
    Boolean uU
    Boolean eE
    String? dcmDcmFileIn
  }
  command <<<
    dcmgpdir \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-a" false="" aA} \
      ~{true="--no-xfer-check" false="" noNoXferCheck} \
      ~{true="-w" false="" wW} \
      ~{true="-nb" false="" nbNb} \
      ~{true="-u" false="" uU} \
      ~{true="-e" false="" eE}
  >>>
}