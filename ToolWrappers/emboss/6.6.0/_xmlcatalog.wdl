version 1.0

task Xmlcatalog {
  input {
    Boolean? sgml
    Boolean? shell
    Boolean? create
    Boolean? del
    Boolean? no_out
    Boolean? no_super_update
    Boolean? verbose
  }
  command <<<
    _xmlcatalog \
      ~{if (sgml) then "--sgml" else ""} \
      ~{if (shell) then "--shell" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (del) then "--del" else ""} \
      ~{if (no_out) then "--noout" else ""} \
      ~{if (no_super_update) then "--no-super-update" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sgml: ": handle SGML Super catalogs for --add and --del"
    shell: ": run a shell allowing interactive queries"
    create: ": create a new catalog"
    del: "'values' : remove values"
    no_out: ": avoid dumping the result on stdout\\nused with --add or --del, it saves the catalog changes\\nand with --sgml it automatically updates the super catalog"
    no_super_update: ": do not update the SGML super catalog"
    verbose: ": provide debug informations"
  }
  output {
    File out_stdout = stdout()
  }
}