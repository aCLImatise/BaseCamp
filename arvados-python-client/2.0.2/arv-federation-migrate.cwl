#!/usr/bin/env cwl-runner

baseCommand:
- arv-federation-migrate
class: CommandLineTool
cwlVersion: v1.0
id: arv-federation-migrate
inputs:
- doc: Generate report .csv file listing users by email address and their associated
    Arvados accounts
  id: report
  inputBinding:
    prefix: --report
  type: string
- doc: Consume report .csv and migrate users to designated Arvados accounts
  id: migrate
  inputBinding:
    prefix: --migrate
  type: string
- doc: Consume report .csv and report how user would be migrated to designated Arvados
    accounts
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: string
- doc: Check that tokens are usable and the federation is well connected
  id: check
  inputBinding:
    prefix: --check
  type: boolean
