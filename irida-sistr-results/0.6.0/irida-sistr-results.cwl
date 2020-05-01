#!/usr/bin/env cwl-runner

baseCommand:
- irida-sistr-results
class: CommandLineTool
cwlVersion: v1.0
id: irida-sistr-results
inputs:
- doc: The URL to the IRIDA instance.
  id: irid_a_url
  inputBinding:
    prefix: --irida-url
  type: string
- doc: The client id for an IRIDA instance.
  id: client_id
  inputBinding:
    prefix: --client-id
  type: string
- doc: The client secret for the IRIDA instance.
  id: client_secret
  inputBinding:
    prefix: --client-secret
  type: string
- doc: The username for the IRIDA instance.
  id: username
  inputBinding:
    prefix: --username
  type: string
- doc: The password for the IRIDA instance. Prompts for password if left blank.
  id: password
  inputBinding:
    prefix: --password
  type: string
- doc: Turn on verbose logging.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Projects to scan for SISTR results. If left blank will scan all projects the
    user has access to.
  id: project
  inputBinding:
    prefix: --project
  type: string
- doc: Explicitly load results from all projects the user has access to.  Will ignore
    the values given in --project.
  id: all_projects
  inputBinding:
    prefix: --all-projects
  type: boolean
- doc: Print results to tab-deliminited file.
  id: to_tab_file
  inputBinding:
    prefix: --to-tab-file
  type: string
- doc: Print results to the given excel file.
  id: to_excel_file
  inputBinding:
    prefix: --to-excel-file
  type: string
- doc: Include SISTR analysis results run directly by the user.
  id: include_user_results
  inputBinding:
    prefix: --include-user-results
  type: boolean
- doc: If including user results, do not replace existing SISTR analysis that were
    automatically generated with user-run SISTR results.
  id: exclude_user_existing_results
  inputBinding:
    prefix: --exclude-user-existing-results
  type: boolean
- doc: The reportable serovars file [/tmp/tmphvphnqsn/lib/python3.8/site-packages/irida_sistr_results/data/reportable_serovars.tsv].
  id: reportable_serovars_file
  inputBinding:
    prefix: --reportable-serovars-file
  type: string
- doc: Excludes printing of reportable serovar status in final output.
  id: exclude_reportable_status
  inputBinding:
    prefix: --exclude-reportable-status
  type: boolean
- doc: Connection timeout when getting results from IRIDA.
  id: connection_timeout
  inputBinding:
    prefix: --connection-timeout
  type: string
- doc: Configuration file for IRIDA (overrides values in ['/tmp/tmphvphnqsn/lib/python3.8/site-packages/irida_sistr_results/etc/config.ini',
    '/home/ubuntu/.local/share/irida-sistr-results/config.ini'])
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: Only include results of these workflow versions (or uuids) ['0.1', '0.2', '0.3']
    [all versions]
  id: workflow
  inputBinding:
    prefix: --workflow
  type: string
- doc: Only include samples created more recently than this date (in format YYYY-MM-DD)
    or this many days ago (as a number) [Include all samples]
  id: samples_created_since
  inputBinding:
    prefix: --samples-created-since
  type: string
