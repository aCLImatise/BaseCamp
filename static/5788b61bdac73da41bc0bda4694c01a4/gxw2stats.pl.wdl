version 1.0

task Gxw2stats.pl.bak {
  input {
    String nsNs
    Boolean sfdSfd
    Boolean smcSmc
    Boolean amcAmc
    String camcCamc
    Boolean cpCp
    Boolean cmcCmc
    Boolean xmlXml
    String runRun
    String sSXml
  }
  command <<<
    gxw2stats.pl.bak \
      ~{if defined(nsNs) then ("-ns " +  '"' + nsNs + '"') else ""} \
      ~{true="-sfd" false="" sfdSfd} \
      ~{true="-smc" false="" smcSmc} \
      ~{true="-amc" false="" amcAmc} \
      ~{if defined(camcCamc) then ("-camc " +  '"' + camcCamc + '"') else ""} \
      ~{true="-cp" false="" cpCp} \
      ~{true="-cmc" false="" cmcCmc} \
      ~{true="-xml" false="" xmlXml} \
      ~{if defined(runRun) then ("-run " +  '"' + runRun + '"') else ""} \
      ~{if defined(sSXml) then ("-sxml " +  '"' + sSXml + '"') else ""}
  >>>
}