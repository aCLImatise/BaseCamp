class: CommandLineTool
id: synapse_cp.cwl
inputs:
- id: in_destination_id
  doc: "Synapse ID of project or folder where file will be\ncopied to."
  type: long?
  inputBinding:
    prefix: --destinationId
- id: in_set_provenance
  doc: "Has three values to set the provenance of the copied\nentity-traceback: Sets\
    \ to the source entityexisting:\nSets to source entity's original provenance (if\
    \ it\nexists)None/none: No provenance is set"
  type: string?
  inputBinding:
    prefix: --setProvenance
- id: in_update_existing
  doc: "Will update the file if there is already a file that\nis named the same in\
    \ the destination"
  type: boolean?
  inputBinding:
    prefix: --updateExisting
- id: in_skip_copy_annotations
  doc: Do not copy the annotations
  type: boolean?
  inputBinding:
    prefix: --skipCopyAnnotations
- id: in_exclude_types
  doc: "[file table ...]\nAccepts a list of entity types (file, table, link)\nwhich\
    \ determines which entity types to not copy."
  type: boolean?
  inputBinding:
    prefix: --excludeTypes
- id: in_skip_copy_wiki
  doc: Do not copy the wiki pages
  type: boolean?
  inputBinding:
    prefix: --skipCopyWiki
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- synapse
- cp
