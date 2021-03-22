version 1.0

task FunannotateSetup {
  input {
    Boolean? install
    Boolean? busco_db
    Boolean? database
    Boolean? update
    Boolean? force
    Boolean? wget
    Boolean? local
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
      ~{if (wget) then "--wget" else ""} \
      ~{if (local) then "--local" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
  parameter_meta {
    install: "Download format databases. Default: all\\n[merops,uniprot,dbCAN,pfam,repeats,go,\\nmibig,interpro,busco_outgroups,gene2product]"
    busco_db: "Busco Databases to install. Default: dikarya [all,fungi,aves,etc]"
    database: "Path to funannotate database"
    update: "Check remote md5 and update if newer version found"
    force: "Force overwriting database"
    wget: "Use wget to download instead of python requests"
    local: "Use local resource JSON file instead of current on github"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}