version 1.0

task Flextaxd {
  input {
    Boolean? db
    Boolean? _outdir_output
    Boolean? dump
    Boolean? dump_mini
    Boolean? force
    Boolean? tf
    Boolean? tt
    Boolean? taxid_base
    Boolean? mf
    Boolean? md
    Boolean? gt
    Boolean? gp
    Boolean? _parent_parent
    Boolean? replace
    Boolean? db_program
    Boolean? dump_prefix
    Boolean? dump_sep
    Boolean? dump_descriptions
    Boolean? logs
    Boolean? verbose
    Boolean? debug
    Boolean? supress
    Boolean? quiet
  }
  command <<<
    flextaxd \
      ~{true="-db" false="" db} \
      ~{true="-o" false="" _outdir_output} \
      ~{true="--dump" false="" dump} \
      ~{true="--dump_mini" false="" dump_mini} \
      ~{true="--force" false="" force} \
      ~{true="-tf" false="" tf} \
      ~{true="-tt" false="" tt} \
      ~{true="--taxid_base" false="" taxid_base} \
      ~{true="-mf" false="" mf} \
      ~{true="-md" false="" md} \
      ~{true="-gt" false="" gt} \
      ~{true="-gp" false="" gp} \
      ~{true="-p" false="" _parent_parent} \
      ~{true="--replace" false="" replace} \
      ~{true="--dbprogram" false="" db_program} \
      ~{true="--dump_prefix" false="" dump_prefix} \
      ~{true="--dump_sep" false="" dump_sep} \
      ~{true="--dump_descriptions" false="" dump_descriptions} \
      ~{true="--logs" false="" logs} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--supress" false="" supress} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    db: ", --database      Custom taxonomy sqlite3 database file (fullpath)"
    _outdir_output: ", --outdir         Output directory"
    dump: "Write database to names.dmp and nodes.dmp"
    dump_mini: "Dump minimal file with tab as separator"
    force: "use when script is implemented in pipeline to avoid security questions on overwrite!"
    tf: ", --taxonomy_file  Taxonomy source file"
    tt: ", --taxonomy_type  Source format of taxonomy input file (NCBI,CanSNPer,QIIME)"
    taxid_base: "The base for internal taxonomy ID numbers, when using NCBI as base select base at minimum 3000000 (default = 1)"
    mf: ", --mod_file      File contaning modifications parent,child,(taxonomy level)"
    md: ", --mod_database  Database file containing modifications"
    gt: ", --genomeid2taxid  File that lists which node a genome should be assigned to"
    gp: ", --genomes_path  Path to genome folder is required when using NCBI_taxonomy as source"
    _parent_parent: ", --parent         Parent from which to add (replace see below) branch"
    replace: "Add if existing children of parents should be removed!"
    db_program: "Adjust output file to certain output specifications [kraken2, krakenuniq, ganon, centrifuge]"
    dump_prefix: "change dump prefix reqires two names default(names,nodes)"
    dump_sep: "Set output separator default(NCBI) also adds extra trailing columns for kraken"
    dump_descriptions: "Dump description names instead of database integers"
    logs: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
    quiet: "Don´t show logging messages in terminal!"
  }
}