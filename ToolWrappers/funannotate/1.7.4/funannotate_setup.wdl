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
      ~{if (install) then "--install" else ""} \
      ~{if (busco_db) then "--busco_db" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (wget) then "--wget" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install: "Download format databases. Default: all\\n[merops,uniprot,dbCAN,pfam,repeats,go,\\nmibig,interpro,busco_outgroups,gene2product]"
    busco_db: "Busco Databases to install. Default: dikarya [all,fungi,aves,etc]"
    database: "Path to funannotate database"
    update: "Check remote md5 and update if newer version found"
    force: "Force overwriting database"
    wget: "Use wget to download instead of python requests"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}