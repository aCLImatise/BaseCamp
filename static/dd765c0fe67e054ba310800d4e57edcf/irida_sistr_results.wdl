version 1.0

task Iridasistrresults {
  input {
    String? irid_a_url
    String? client_id
    String? client_secret
    String? username
    String? password
    Boolean? verbose
    String? project
    Boolean? all_projects
    File? to_tab_file
    File? to_excel_file
    Boolean? include_user_results
    Boolean? exclude_user_existing_results
    File? reportable_serovars_file
    Boolean? exclude_reportable_status
    String? connection_timeout
    File? config
    Float? only_include_results
    Int? samples_created_since
  }
  command <<<
    irida_sistr_results \
      ~{if defined(irid_a_url) then ("--irida-url " +  '"' + irid_a_url + '"') else ""} \
      ~{if defined(client_id) then ("--client-id " +  '"' + client_id + '"') else ""} \
      ~{if defined(client_secret) then ("--client-secret " +  '"' + client_secret + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if (all_projects) then "--all-projects" else ""} \
      ~{if defined(to_tab_file) then ("--to-tab-file " +  '"' + to_tab_file + '"') else ""} \
      ~{if defined(to_excel_file) then ("--to-excel-file " +  '"' + to_excel_file + '"') else ""} \
      ~{if (include_user_results) then "--include-user-results" else ""} \
      ~{if (exclude_user_existing_results) then "--exclude-user-existing-results" else ""} \
      ~{if defined(reportable_serovars_file) then ("--reportable-serovars-file " +  '"' + reportable_serovars_file + '"') else ""} \
      ~{if (exclude_reportable_status) then "--exclude-reportable-status" else ""} \
      ~{if defined(connection_timeout) then ("--connection-timeout " +  '"' + connection_timeout + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(only_include_results) then ("--workflow " +  '"' + only_include_results + '"') else ""} \
      ~{if defined(samples_created_since) then ("--samples-created-since " +  '"' + samples_created_since + '"') else ""}
  >>>
  parameter_meta {
    irid_a_url: "The URL to the IRIDA instance."
    client_id: "The client id for an IRIDA instance."
    client_secret: "The client secret for the IRIDA instance."
    username: "The username for the IRIDA instance."
    password: "The password for the IRIDA instance. Prompts for password if left blank."
    verbose: "Turn on verbose logging."
    project: "Projects to scan for SISTR results. If left blank will scan all projects the user has access to."
    all_projects: "Explicitly load results from all projects the user has access to.  Will ignore the values given in --project."
    to_tab_file: "Print results to tab-deliminited file."
    to_excel_file: "Print results to the given excel file."
    include_user_results: "Include SISTR analysis results run directly by the user."
    exclude_user_existing_results: "If including user results, do not replace existing SISTR analysis that were automatically generated with user-run SISTR results."
    reportable_serovars_file: "The reportable serovars file [/usr/local/lib/python3.7/site-packages/irida_sistr_results/data/reportable_serovars.tsv]."
    exclude_reportable_status: "Excludes printing of reportable serovar status in final output."
    connection_timeout: "Connection timeout when getting results from IRIDA."
    config: "Configuration file for IRIDA (overrides values in ['/usr/local/lib/python3.7/site-packages/irida_sistr_results/etc/config.ini', '/root/.local/share/irida-sistr-results/config.ini'])"
    only_include_results: "Only include results of these workflow versions (or uuids) ['0.1', '0.2', '0.3'] [all versions]"
    samples_created_since: "Only include samples created more recently than this date (in format YYYY-MM-DD) or this many days ago (as a number) [Include all samples]"
  }
  output {
    File out_stdout = stdout()
  }
}