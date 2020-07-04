class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_patch_bundle.cwl
inputs:
- id: add_files
  doc: List of new files to add to the bundle. File names must be unique.
  type: string
  inputBinding:
    prefix: --add-files
- id: remove_files
  doc: List of files to remove from the bundle. Files must match exactly to be removed.
    Files not found in the bundle are ignored.
  type: string
  inputBinding:
    prefix: --remove-files
- id: uuid
  doc: A RFC4122-compliant ID of the bundle to update.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to update the bundle on. Updates are propagated to other replicas.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- patch-bundle
