version 1.0

task RevtransJarmo.py {
  input {
    Boolean allAllInternal
    Boolean readReadThroughStop
    String matchMatch
    Boolean vV
  }
  command <<<
    revtrans_jarmo.py \
      ~{true="-allinternal" false="" allAllInternal} \
      ~{true="-readthroughstop" false="" readReadThroughStop} \
      ~{if defined(matchMatch) then ("-match " +  '"' + matchMatch + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}