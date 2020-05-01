version 1.0

task Saddle2dot.pl {
  input {
    Boolean cutCut
    String nameName
  }
  command <<<
    saddle2dot.pl \
      ~{true="-cut" false="" cutCut} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""}
  >>>
}