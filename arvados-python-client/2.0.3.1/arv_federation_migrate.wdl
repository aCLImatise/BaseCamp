version 1.0

task ArvFederationMigrate {
  input {
    String? report
    String? migrate
    String? dry_run
    Boolean? check
    String? tokens
  }
  command <<<
    arv-federation-migrate \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(migrate) then ("--migrate " +  '"' + migrate + '"') else ""} \
      ~{if defined(dry_run) then ("--dry-run " +  '"' + dry_run + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{if defined(tokens) then ("--tokens " +  '"' + tokens + '"') else ""}
  >>>
  parameter_meta {
    report: "Generate report .csv file listing users by email address and their associated Arvados accounts"
    migrate: "Consume report .csv and migrate users to designated Arvados accounts"
    dry_run: "Consume report .csv and report how user would be migrated to designated Arvados accounts"
    check: "Check that tokens are usable and the federation is well connected"
    tokens: ""
  }
}