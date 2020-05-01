#!/usr/bin/env cwl-runner

baseCommand:
- ansible-doc
class: CommandLineTool
cwlVersion: v1.0
id: ansible-doc
inputs:
- doc: ''
  id: module
  inputBinding:
    position: 0
  type: string
- doc: Ansible modules/ directory
  id: module_path
  inputBinding:
    prefix: --module-path
  type: string
- doc: List available modules
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: Show playbook snippet for specified module(s)
  id: snippet
  inputBinding:
    prefix: --snippet
  type: boolean
- doc: Show version number and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
