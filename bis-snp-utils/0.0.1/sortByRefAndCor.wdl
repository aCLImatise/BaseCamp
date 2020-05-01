version 1.0

task SortByRefAndCor.pl {
  input {
    String kK
    String cC
    String tmpTmp
    String? inputInput
    String? refRefDict
  }
  command <<<
    sortByRefAndCor.pl \
      ~{inputInput} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(cC) then ("--c " +  '"' + cC + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{refRefDict}
  >>>
}