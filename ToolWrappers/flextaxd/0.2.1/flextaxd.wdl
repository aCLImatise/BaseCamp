version 1.0

task Flextaxd {
  input {
    Directory? outdir
    Boolean? dump
    Boolean? dump_mini
    Boolean? force
    Boolean? taxonomy_file
    Boolean? taxonomy_type
    Boolean? taxid_base
    Boolean? mod_file
    Boolean? mod_database
    Boolean? genome_id_two_taxid
    Boolean? genomes_path
    Boolean? parent
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
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (dump_mini) then "--dump_mini" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (taxonomy_file) then "--taxonomy_file" else ""} \
      ~{if (taxonomy_type) then "--taxonomy_type" else ""} \
      ~{if (taxid_base) then "--taxid_base" else ""} \
      ~{if (mod_file) then "--mod_file" else ""} \
      ~{if (mod_database) then "--mod_database" else ""} \
      ~{if (genome_id_two_taxid) then "--genomeid2taxid" else ""} \
      ~{if (genomes_path) then "--genomes_path" else ""} \
      ~{if (parent) then "--parent" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Output directory"
    dump: "Write database to names.dmp and nodes.dmp"
    dump_mini: "Dump minimal file with tab as separator"
    force: "use when script is implemented in pipeline to avoid\\nsecurity questions on overwrite!"
    taxonomy_file: "Taxonomy source file"
    taxonomy_type: "Source format of taxonomy input file\\n(QIIME,CanSNPer,NCBI)"
    taxid_base: "The base for internal taxonomy ID numbers, when using\\nNCBI as base select base at minimum 3000000 (default =\\n1)"
    mod_file: "File contaning modifications parent,child,(taxonomy\\nlevel)"
    mod_database: "Database file containing modifications"
    genome_id_two_taxid: "File that lists which node a genome should be assigned\\nto"
    genomes_path: "Path to genome folder is required when using\\nNCBI_taxonomy as source"
    parent: "Parent from which to add (replace see below) branch"
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
    Directory out_outdir = "${in_outdir}"
    File out_db_program = "${in_db_program}"
  }
}