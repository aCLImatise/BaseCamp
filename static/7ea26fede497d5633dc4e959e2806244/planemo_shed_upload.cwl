class: CommandLineTool
id: planemo_shed_upload.cwl
inputs:
- id: recursive
  doc: Recursively perform command for nested repository directories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: fail_fast
  doc: If multiple repositories are specified and an error occurs stop immediately
    instead of processing remaining repositories.
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: name
  doc: Tool Shed repository name (defaults to the inferred tool directory name).
  type: string
  inputBinding:
    prefix: --name
- id: shed_email
  doc: E-mail for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_email
- id: shed_key
  doc: API key for Tool Shed access. An API key is required unless e-mail and password
    is specified. This key can be specified with either --shed_key or --shed_key_from_env.
  type: string
  inputBinding:
    prefix: --shed_key
- id: shed_key_from_env
  doc: Environment variable to read API key for Tool Shed access from.
  type: string
  inputBinding:
    prefix: --shed_key_from_env
- id: shed_password
  doc: Password for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_password
- id: shed_target
  doc: Tool Shed to target (this can be 'toolshed', 'testtoolshed', 'local' (alias
    for http://localhost:9009/), an arbitrary url or mappings defined ~/.planemo.yml.
  type: string
  inputBinding:
    prefix: --shed_target
- id: message
  doc: Commit message for tool shed upload.
  type: string
  inputBinding:
    prefix: --message
- id: force_repository_creation
  doc: If a repository cannot be found for the specified user/repo name pair, then
    automatically create the repository in the toolshed.
  type: boolean
  inputBinding:
    prefix: --force_repository_creation
- id: check_diff
  doc: Skip uploading if the shed_diff detects there would be no 'difference' (only
    attributes populated by the shed would be updated.)
  type: boolean
  inputBinding:
    prefix: --check_diff
- id: tar_only
  doc: Produce tar file for upload but do not publish to a tool shed.
  type: boolean
  inputBinding:
    prefix: --tar_only
- id: tar
  doc: Specify a pre-existing tar file instead of automatically building one as part
    of this command.
  type: File
  inputBinding:
    prefix: --tar
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_upload
