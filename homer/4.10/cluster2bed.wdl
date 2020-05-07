version 1.0

task Cluster2bed.pl {
  input {
    Boolean resRes
    Boolean minMinP
    String nameName
  }
  command <<<
    cluster2bed.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-minp" false="" minMinP} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""}
  >>>
}