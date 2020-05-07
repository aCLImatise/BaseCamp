version 1.0

task CentrifugeSortNt.pl {
  input {
    String mM
    String aA
  }
  command <<<
    centrifuge-sort-nt.pl \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}