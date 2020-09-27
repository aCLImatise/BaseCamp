class: CommandLineTool
id: ansible_doc.cwl
inputs:
- id: in_module_path
  doc: Ansible modules/ directory
  type: File
  inputBinding:
    prefix: --module-path
- id: in_list
  doc: List available modules
  type: boolean
  inputBinding:
    prefix: --list
- id: in_snippet
  doc: Show playbook snippet for specified module(s)
  type: boolean
  inputBinding:
    prefix: --snippet
- id: in_show_version_number
  doc: Show version number and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_module_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ansible-doc
