version 1.0

task CanSNPer2database {
  input {
    Boolean? db
    Boolean? tree
    Boolean? annotation
    Boolean? references
    Boolean? source_type
    Boolean? create
    Boolean? mod_file
    Boolean? parent
    Boolean? replace
    Boolean? export
    Boolean? export_format
    Boolean? _outdir_outdir
    Boolean? tmpdir
    Boolean? logs
    Boolean? verbose
    Boolean? debug
    Boolean? supress
    String update_slash_replace_slash_remove
  }
  command <<<
    CanSNPer2_database \
      ~{update_slash_replace_slash_remove} \
      ~{if (db) then "-db" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (references) then "--references" else ""} \
      ~{if (source_type) then "--source_type" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (mod_file) then "--mod_file" else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (export) then "--export" else ""} \
      ~{if (export_format) then "--export_format" else ""} \
      ~{if (_outdir_outdir) then "-o" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (logs) then "--logs" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""}
  >>>
  parameter_meta {
    db: ", --database   CanSNPer2 database name"
    tree: "CanSNPer tree source file"
    annotation: "CanSNPer snp source file"
    references: "File containing all reference genomes listed"
    source_type: "Select source file type"
    create: "Create new database!"
    mod_file: "File with modifications/update to the tree"
    parent: "Node (or nodes matching tree file) from which to"
    replace: "replace node"
    export: "Export database to text format (exports tree and\\nannotation file)"
    export_format: "Select output format [tab, newick]"
    _outdir_outdir: ", --outdir      outdir for database export!"
    tmpdir: "Specify tmp directory default (/tmp)"
    logs: "Specify log directory"
    verbose: "print process info, default no output"
    debug: "print debug info"
    supress: "supress warnings"
    update_slash_replace_slash_remove: "--remove           If node is given, instead of replace/update remove branch"
  }
  output {
    File out_stdout = stdout()
  }
}