version 1.0

task Arvfederationmigrate {
  input {
    String? tokens
    File? report
    String? migrate
    String? dry_run
    Boolean? check
  }
  command <<<
    arv_federation_migrate \
      ~{if defined(tokens) then ("--tokens " +  '"' + tokens + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(migrate) then ("--migrate " +  '"' + migrate + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  parameter_meta {
    tokens: ""
    report: "Generate report .csv file listing users by email address\\nand their associated Arvados accounts"
    migrate: "Consume report .csv and migrate users to designated\\nArvados accounts"
    dry_run: "Consume report .csv and report how user would be migrated\\nto designated Arvados accounts"
    check: "Check that tokens are usable and the federation is well\\nconnected\\n"
  }
  output {
    File out_stdout = stdout()
  }
}