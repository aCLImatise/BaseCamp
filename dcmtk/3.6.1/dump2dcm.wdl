version 1.0

task Dump2dcm {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean eE
    String? dumpfileDumpfileIn
    String? dcmDcmFileOut
  }
  command <<<
    dump2dcm \
      ~{dumpfileDumpfileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{dcmDcmFileOut}
  >>>
}