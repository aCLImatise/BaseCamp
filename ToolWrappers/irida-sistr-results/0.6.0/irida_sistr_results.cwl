class: CommandLineTool
id: irida_sistr_results.cwl
inputs:
- id: in_irid_a_url
  doc: The URL to the IRIDA instance.
  type: string?
  inputBinding:
    prefix: --irida-url
- id: in_client_id
  doc: The client id for an IRIDA instance.
  type: string?
  inputBinding:
    prefix: --client-id
- id: in_client_secret
  doc: The client secret for the IRIDA instance.
  type: string?
  inputBinding:
    prefix: --client-secret
- id: in_username
  doc: The username for the IRIDA instance.
  type: string?
  inputBinding:
    prefix: --username
- id: in_password
  doc: The password for the IRIDA instance. Prompts for password if left blank.
  type: string?
  inputBinding:
    prefix: --password
- id: in_verbose
  doc: Turn on verbose logging.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_project
  doc: Projects to scan for SISTR results. If left blank will scan all projects the
    user has access to.
  type: string?
  inputBinding:
    prefix: --project
- id: in_all_projects
  doc: Explicitly load results from all projects the user has access to.  Will ignore
    the values given in --project.
  type: boolean?
  inputBinding:
    prefix: --all-projects
- id: in_to_tab_file
  doc: Print results to tab-deliminited file.
  type: File?
  inputBinding:
    prefix: --to-tab-file
- id: in_to_excel_file
  doc: Print results to the given excel file.
  type: File?
  inputBinding:
    prefix: --to-excel-file
- id: in_include_user_results
  doc: Include SISTR analysis results run directly by the user.
  type: boolean?
  inputBinding:
    prefix: --include-user-results
- id: in_exclude_user_existing_results
  doc: If including user results, do not replace existing SISTR analysis that were
    automatically generated with user-run SISTR results.
  type: boolean?
  inputBinding:
    prefix: --exclude-user-existing-results
- id: in_reportable_serovars_file
  doc: The reportable serovars file [/usr/local/lib/python3.7/site-packages/irida_sistr_results/data/reportable_serovars.tsv].
  type: File?
  inputBinding:
    prefix: --reportable-serovars-file
- id: in_exclude_reportable_status
  doc: Excludes printing of reportable serovar status in final output.
  type: boolean?
  inputBinding:
    prefix: --exclude-reportable-status
- id: in_connection_timeout
  doc: Connection timeout when getting results from IRIDA.
  type: string?
  inputBinding:
    prefix: --connection-timeout
- id: in_config
  doc: Configuration file for IRIDA (overrides values in ['/usr/local/lib/python3.7/site-packages/irida_sistr_results/etc/config.ini',
    '/root/.local/share/irida-sistr-results/config.ini'])
  type: File?
  inputBinding:
    prefix: --config
- id: in_workflow
  doc: Only include results of these workflow versions (or uuids) ['0.1', '0.2', '0.3']
    [all versions]
  type: double?
  inputBinding:
    prefix: --workflow
- id: in_samples_created_since
  doc: Only include samples created more recently than this date (in format YYYY-MM-DD)
    or this many days ago (as a number) [Include all samples]
  type: long?
  inputBinding:
    prefix: --samples-created-since
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- irida-sistr-results
