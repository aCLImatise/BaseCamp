version 1.0

task LoadGenome.pl {
  input {
    Boolean orgOrg
    Boolean gidGid
    Boolean tidTid
    String ensemblEnsemblRepeats
  }
  command <<<
    loadGenome.pl \
      ~{true="-org" false="" orgOrg} \
      ~{true="-gid" false="" gidGid} \
      ~{true="-tid" false="" tidTid} \
      ~{if defined(ensemblEnsemblRepeats) then ("-ensemblRepeats " +  '"' + ensemblEnsemblRepeats + '"') else ""}
  >>>
}