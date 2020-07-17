version 1.0

task FunannotateSetup {
  input {
    Boolean? install
    Boolean? busco_db
    Boolean? database
    Boolean? update
    Boolean? force
    Boolean? wget
    String arguments
  }
  command <<<
    funannotate setup \
      ~{arguments} \
      ~{true="--install" false="" install} \
      ~{true="--busco_db" false="" busco_db} \
      ~{true="--database" false="" database} \
      ~{true="--update" false="" update} \
      ~{true="--force" false="" force} \
      ~{true="--wget" false="" wget}
  >>>
  parameter_meta {
    install: "Download format databases. Default: all [merops,uniprot,dbCAN,pfam,repeats,go, mibig,interpro,busco_outgroups,gene2product]"
    busco_db: "Busco Databases to install. Default: dikarya [all,fungi,aves,etc]"
    database: "Path to funannotate database"
    update: "Check remote md5 and update if newer version found"
    force: "Force overwriting database"
    wget: "Use wget to download instead of python requests"
    arguments: ""
  }
}