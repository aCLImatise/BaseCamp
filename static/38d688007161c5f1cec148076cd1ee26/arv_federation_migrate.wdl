version 1.0

task Arvfederationmigrate {
  input {
    File? tokens
    String? migrate
    String? dry_run
    Boolean? check
  }
  command <<<
    arv_federation_migrate \
      ~{if defined(tokens) then ("--tokens " +  '"' + tokens + '"') else ""} \
      ~{if defined(migrate) then ("--migrate " +  '"' + migrate + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tokens: "Generate report .csv file listing users by email address\\nand their associated Arvados accounts"
    migrate: "Consume report .csv and migrate users to designated\\nArvados accounts"
    dry_run: "Consume report .csv and report how user would be migrated\\nto designated Arvados accounts"
    check: "Check that tokens are usable and the federation is well\\nconnected\\n"
  }
  output {
    File out_stdout = stdout()
  }
}