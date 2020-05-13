version 1.0

task SVwiden {
  input {
    String refnameRefname
    Boolean noheaderNoheader
  }
  command <<<
    SVwiden \
      ~{if defined(refnameRefname) then ("--refname " +  '"' + refnameRefname + '"') else ""} \
      ~{true="--noheader" false="" noheaderNoheader}
  >>>
}