version 1.0

task Flextaxd {
  input {
    Directory? _outdir_output
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
    File? db_program
    Boolean? dump_prefix
    Boolean? dump_sep
    Boolean? dump_descriptions
    Boolean? logs
    Boolean? verbose
    Boolean? debug
    Boolean? supress
    Boolean? quiet
    Boolean? db
    String required
  }
  command <<<
    flextaxd \
      ~{required} \
      ~{if (_outdir_output) then "-o" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (dump_mini) then "--dump_mini" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (tt) then "-tt" else ""} \
      ~{if (taxid_base) then "--taxid_base" else ""} \
      ~{if (mf) then "-mf" else ""} \
      ~{if (md) then "-md" else ""} \
      ~{if (gt) then "-gt" else ""} \
      ~{if (gp) then "-gp" else ""} \
      ~{if (_parent_parent) then "-p" else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (db_program) then "--dbprogram" else ""} \
      ~{if (dump_prefix) then "--dump_prefix" else ""} \
      ~{if (dump_sep) then "--dump_sep" else ""} \
      ~{if (dump_descriptions) then "--dump_descriptions" else ""} \
      ~{if (logs) then "--logs" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (db) then "-db" else ""}
  >>>
  parameter_meta {
    _outdir_output: ", --outdir         Output directory"
    dump: "Write database to names.dmp and nodes.dmp"
    dump_mini: "Dump minimal file with tab as separator"
    force: "use when script is implemented in pipeline to avoid\\nsecurity questions on overwrite!"
    tf: ", --taxonomy_file\\nTaxonomy source file"
    tt: ", --taxonomy_type\\nSource format of taxonomy input file\\n(QIIME,CanSNPer,NCBI)"
    taxid_base: "The base for internal taxonomy ID numbers, when using\\nNCBI as base select base at minimum 3000000 (default =\\n1)"
    mf: ", --mod_file      File contaning modifications parent,child,(taxonomy\\nlevel)"
    md: ", --mod_database\\nDatabase file containing modifications"
    gt: ", --genomeid2taxid\\nFile that lists which node a genome should be assigned\\nto"
    gp: ", --genomes_path\\nPath to genome folder is required when using\\nNCBI_taxonomy as source"
    _parent_parent: ", --parent         Parent from which to add (replace see below) branch"
    replace: "Add if existing children of parents should be removed!"
    db_program: "Adjust output file to certain output specifications\\n[kraken2, krakenuniq, ganon, centrifuge]"
    dump_prefix: "change dump prefix reqires two names\\ndefault(names,nodes)"
    dump_sep: "Set output separator default(NCBI) also adds extra\\ntrailing columns for kraken"
    dump_descriptions: "Dump description names instead of database integers"
    logs: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
    quiet: "Don´t show logging messages in terminal!"
    db: ""
    required: "-db , --database      Custom taxonomy sqlite3 database file (fullpath)"
  }
  output {
    File out_stdout = stdout()
    Directory out__outdir_output = "${in__outdir_output}"
    File out_db_program = "${in_db_program}"
  }
}