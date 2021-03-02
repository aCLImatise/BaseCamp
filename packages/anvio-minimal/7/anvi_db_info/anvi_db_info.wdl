version 1.0

task Anvidbinfo {
  input {
    String? self_key
    String? self_value
    Boolean? just_do_it
    String genes_db
  }
  command <<<
    anvi_db_info \
      ~{genes_db} \
      ~{if defined(self_key) then ("--self-key " +  '"' + self_key + '"') else ""} \
      ~{if defined(self_value) then ("--self-value " +  '"' + self_value + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    self_key: "The key you wish to set or change. (default: None)"
    self_value: "The value you wish to set for the self key. (default:\\nNone)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    genes_db: "🍕 Can provide: "
  }
  output {
    File out_stdout = stdout()
  }
}