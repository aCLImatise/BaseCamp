version 1.0

task Bioprov {
  input {
    Boolean? show_config
    Boolean? show_prov_store
    Boolean? create_prov_store
    Boolean? show_db
    Boolean? clear_db
    Boolean? list
  }
  command <<<
    bioprov \
      ~{if (show_config) then "--show_config" else ""} \
      ~{if (show_prov_store) then "--show_provstore" else ""} \
      ~{if (create_prov_store) then "--create_provstore" else ""} \
      ~{if (show_db) then "--show_db" else ""} \
      ~{if (clear_db) then "--clear_db" else ""} \
      ~{if (list) then "--list" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioprov:0.1.22--pyh3252c3a_0"
  }
  parameter_meta {
    show_config: "Show location of config file."
    show_prov_store: "Show location of ProvStore credentials file."
    create_prov_store: "Create ProvStore file credentials file."
    show_db: "Show location of database file."
    clear_db: "Clears all records in database."
    list: "List Projects in the BioProv database."
  }
  output {
    File out_stdout = stdout()
  }
}