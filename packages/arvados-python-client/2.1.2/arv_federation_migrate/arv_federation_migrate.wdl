version 1.0

task Arvfederationmigrate {
  input {
    File? tokens
    File? migrate
    File? dry_run
    Boolean? check
    String login_cluster_dot
    String account_dot
  }
  command <<<
    arv_federation_migrate \
      ~{login_cluster_dot} \
      ~{account_dot} \
      ~{if defined(tokens) then ("--tokens " +  '"' + tokens + '"') else ""} \
      ~{if defined(migrate) then ("--migrate " +  '"' + migrate + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.2--py_0"
  }
  parameter_meta {
    tokens: "Read tokens from FILE. Not needed when using"
    migrate: "Consume report .csv and migrate users to designated\\nArvados accounts."
    dry_run: "Consume report .csv and report how user would be\\nmigrated to designated Arvados accounts."
    check: "Check that tokens are usable and the federation is\\nwell connected.\\n"
    login_cluster_dot: "--data-into-subproject"
    account_dot: "--report FILE         Generate report .csv file listing users by email"
  }
  output {
    File out_stdout = stdout()
  }
}