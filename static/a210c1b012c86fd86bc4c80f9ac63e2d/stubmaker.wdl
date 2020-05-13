version 1.0

task Stubmaker.pl {
  input {
    Boolean vV
    String dD
  }
  command <<<
    stubmaker.pl \
      ~{true="-v" false="" vV} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}