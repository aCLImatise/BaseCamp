version 1.0

task _xmlcatalog {
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
      ~{true="--sgml" false="" sgml} \
      ~{true="--shell" false="" shell} \
      ~{true="--create" false="" create} \
      ~{true="--del" false="" del} \
      ~{true="--noout" false="" no_out} \
      ~{true="--no-super-update" false="" no_super_update} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    sgml: ": handle SGML Super catalogs for --add and --del"
    shell: ": run a shell allowing interactive queries"
    create: ": create a new catalog"
    del: "'values' : remove values"
    no_out: ": avoid dumping the result on stdout used with --add or --del, it saves the catalog changes and with --sgml it automatically updates the super catalog"
    no_super_update: ": do not update the SGML super catalog"
    verbose: ": provide debug informations"
  }
}