version 1.0

task MakeUCSCfile {
  input {
    Boolean circoCircoS
    String skipSkipChr
    Boolean noheaderNoheader
  }
  command <<<
    makeUCSCfile \
      ~{true="-circos" false="" circoCircoS} \
      ~{if defined(skipSkipChr) then ("-skipChr " +  '"' + skipSkipChr + '"') else ""} \
      ~{true="-noheader" false="" noheaderNoheader}
  >>>
}