class: CommandLineTool
id: irida_sistr_results.cwl
inputs:
- id: irid_a_url
  doc: The URL to the IRIDA instance.
  type: string
  inputBinding:
    prefix: --irida-url
- id: client_id
  doc: The client id for an IRIDA instance.
  type: string
  inputBinding:
    prefix: --client-id
- id: client_secret
  doc: The client secret for the IRIDA instance.
  type: string
  inputBinding:
    prefix: --client-secret
- id: username
  doc: The username for the IRIDA instance.
  type: string
  inputBinding:
    prefix: --username
- id: password
  doc: The password for the IRIDA instance. Prompts for password if left blank.
  type: string
  inputBinding:
    prefix: --password
- id: verbose
  doc: Turn on verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: project
  doc: Projects to scan for SISTR results. If left blank will scan all projects the
    user has access to.
  type: string
  inputBinding:
    prefix: --project
- id: all_projects
  doc: Explicitly load results from all projects the user has access to.  Will ignore
    the values given in --project.
  type: boolean
  inputBinding:
    prefix: --all-projects
- id: to_tab_file
  doc: Print results to tab-deliminited file.
  type: string
  inputBinding:
    prefix: --to-tab-file
- id: to_excel_file
  doc: Print results to the given excel file.
  type: string
  inputBinding:
    prefix: --to-excel-file
- id: include_user_results
  doc: Include SISTR analysis results run directly by the user.
  type: boolean
  inputBinding:
    prefix: --include-user-results
- id: exclude_user_existing_results
  doc: If including user results, do not replace existing SISTR analysis that were
    automatically generated with user-run SISTR results.
  type: boolean
  inputBinding:
    prefix: --exclude-user-existing-results
- id: reportable_serovars_file
  doc: The reportable serovars file [/tmp/tmphvphnqsn/lib/python3.8/site-packages/irida_sistr_results/data/reportable_serovars.tsv].
  type: string
  inputBinding:
    prefix: --reportable-serovars-file
- id: exclude_reportable_status
  doc: Excludes printing of reportable serovar status in final output.
  type: boolean
  inputBinding:
    prefix: --exclude-reportable-status
- id: connection_timeout
  doc: Connection timeout when getting results from IRIDA.
  type: string
  inputBinding:
    prefix: --connection-timeout
- id: config
  doc: Configuration file for IRIDA (overrides values in ['/tmp/tmphvphnqsn/lib/python3.8/site-packages/irida_sistr_results/etc/config.ini',
    '/home/ubuntu/.local/share/irida-sistr-results/config.ini'])
  type: string
  inputBinding:
    prefix: --config
- id: workflow
  doc: Only include results of these workflow versions (or uuids) ['0.1', '0.2', '0.3']
    [all versions]
  type: string
  inputBinding:
    prefix: --workflow
- id: samples_created_since
  doc: Only include samples created more recently than this date (in format YYYY-MM-DD)
    or this many days ago (as a number) [Include all samples]
  type: string
  inputBinding:
    prefix: --samples-created-since
outputs: []
cwlVersion: v1.1
baseCommand:
- irida-sistr-results
