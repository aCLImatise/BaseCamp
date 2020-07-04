version 1.0

task CanSNPer2Database {
  input {
    Boolean? db
    Boolean? tree
    Boolean? annotation
    Boolean? references
    Boolean? source_type
    Boolean? create
    Boolean? mod_file
    Boolean? parent
    Boolean? remove
    Boolean? replace
    Boolean? export
    Boolean? export_format
    Boolean? _outdir_outdir
    Boolean? tmpdir
    Boolean? logs
    Boolean? verbose
    Boolean? debug
    Boolean? supress
  }
  command <<<
    CanSNPer2-database \
      ~{true="-db" false="" db} \
      ~{true="--tree" false="" tree} \
      ~{true="--annotation" false="" annotation} \
      ~{true="--references" false="" references} \
      ~{true="--source_type" false="" source_type} \
      ~{true="--create" false="" create} \
      ~{true="--mod_file" false="" mod_file} \
      ~{true="--parent" false="" parent} \
      ~{true="--remove" false="" remove} \
      ~{true="--replace" false="" replace} \
      ~{true="--export" false="" export} \
      ~{true="--export_format" false="" export_format} \
      ~{true="-o" false="" _outdir_outdir} \
      ~{true="--tmpdir" false="" tmpdir} \
      ~{true="--logs" false="" logs} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--supress" false="" supress}
  >>>
  parameter_meta {
    db: ", --database   CanSNPer2 database name"
    tree: "CanSNPer tree source file"
    annotation: "CanSNPer snp source file"
    references: "File containing all reference genomes listed"
    source_type: "Select source file type"
    create: "Create new database!"
    mod_file: "File with modifications/update to the tree"
    parent: "Node (or nodes matching tree file) from which to update/replace/remove"
    remove: "If node is given, instead of replace/update remove branch from node"
    replace: "replace node"
    export: "Export database to text format (exports tree and annotation file)"
    export_format: "Select output format [tab, newick]"
    _outdir_outdir: ", --outdir      outdir for database export!"
    tmpdir: "Specify tmp directory default (/tmp)"
    logs: "Specify log directory"
    verbose: "print process info, default no output"
    debug: "print debug info"
    supress: "supress warnings"
  }
}