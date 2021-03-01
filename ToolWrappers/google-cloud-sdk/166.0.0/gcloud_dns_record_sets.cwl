class: CommandLineTool
id: gcloud_dns_record_sets.cwl
inputs:
- id: in_changes
  doc: View details about changes to your Cloud DNS record-sets.
  type: string
  inputBinding:
    position: 0
- id: in_transaction
  doc: Make scriptable and transactional changes to your record-sets.
  type: string
  inputBinding:
    position: 1
- id: in_export
  doc: Export your record-sets into a file.
  type: string
  inputBinding:
    position: 0
- id: in_import
  doc: Import record-sets into your managed-zone.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: View the list of record-sets in a managed-zone.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- dns
- record-sets
