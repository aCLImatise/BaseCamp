version 1.0

task Revtrans.py {
  input {
    Boolean allAllInternal
    Boolean readReadThroughStop
    String matchMatch
    Boolean vV
  }
  command <<<
    revtrans.py \
      ~{true="-allinternal" false="" allAllInternal} \
      ~{true="-readthroughstop" false="" readReadThroughStop} \
      ~{if defined(matchMatch) then ("-match " +  '"' + matchMatch + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}