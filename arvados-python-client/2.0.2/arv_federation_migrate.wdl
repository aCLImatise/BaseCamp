version 1.0

task ArvFederationMigrate {
  input {
    String reportReport
    String migrateMigrate
    String dryDryRun
    Boolean checkCheck
  }
  command <<<
    arv-federation-migrate \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(migrateMigrate) then ("--migrate " +  '"' + migrateMigrate + '"') else ""} \
      ~{if defined(dryDryRun) then ("--dry-run " +  '"' + dryDryRun + '"') else ""} \
      ~{true="--check" false="" checkCheck}
  >>>
}