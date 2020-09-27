version 1.0

task Arvfederationmigrate {
  input {
    File? report
    String? migrate
    String? dry_run
    Boolean? check
    String? tokens
  }
  command <<<
    arv_federation_migrate \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(migrate) then ("--migrate " +  '"' + migrate + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(tokens) then ("--tokens " +  '"' + tokens + '"') else ""}
  >>>
  parameter_meta {
    report: "Generate report .csv file listing users by email address"
    migrate: "Consume report .csv and migrate users to designated"
    dry_run: "Consume report .csv and report how user would be migrated"
    check: "Check that tokens are usable and the federation is well"
    tokens: ""
  }
  output {
    File out_stdout = stdout()
  }
}