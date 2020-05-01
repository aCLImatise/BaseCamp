#!/usr/bin/env cwl-runner

baseCommand:
- confindr_database_setup
class: CommandLineTool
cwlVersion: v1.0
id: confindr_database_setup
inputs:
- doc: Path to download databases to - if folder does not exist, will be created.
    If folder does exist, will be deleted and updated sequences downloaded. Defaults
    to ~/.confindr_db, or the CONFINDR_DB environmental variable.
  id: output_folder
  inputBinding:
    prefix: --output_folder
  type: string
- doc: Path to consumer secret file for rMLST database.
  id: secret_file
  inputBinding:
    prefix: --secret_file
  type: string
