class: CommandLineTool
id: ansible_doc.cwl
inputs:
- id: module
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: module_path
  doc: Ansible modules/ directory
  type: string
  inputBinding:
    prefix: --module-path
- id: list
  doc: List available modules
  type: boolean
  inputBinding:
    prefix: --list
- id: snippet
  doc: Show playbook snippet for specified module(s)
  type: boolean
  inputBinding:
    prefix: --snippet
- id: v
  doc: Show version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ansible-doc
