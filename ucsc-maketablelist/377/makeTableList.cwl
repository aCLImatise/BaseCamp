#!/usr/bin/env cwl-runner

baseCommand:
- makeTableList
class: CommandLineTool
cwlVersion: v1.0
id: maketablelist
inputs:
- doc: ''
  id: assemblies
  inputBinding:
    position: 0
  type: string
- doc: 'show tables: mysql host'
  id: host
  inputBinding:
    prefix: -host
  type: boolean
- doc: 'show tables: mysql user'
  id: user
  inputBinding:
    prefix: -user
  type: boolean
- doc: 'show tables: mysql password'
  id: password
  inputBinding:
    prefix: -password
  type: boolean
- doc: 'optional: mysql profile to write table list to (target server)'
  id: to_prof
  inputBinding:
    prefix: -toProf
  type: boolean
- doc: 'alternative to toProf: mysql target host'
  id: to_host
  inputBinding:
    prefix: -toHost
  type: boolean
- doc: 'alternative to toProf: mysql target user'
  id: to_user
  inputBinding:
    prefix: -toUser
  type: boolean
- doc: 'alternative to toProf: mysql target pwd'
  id: to_password
  inputBinding:
    prefix: -toPassword
  type: boolean
- doc: specify an alternative hgcentral db name when using -all
  id: hg_central
  inputBinding:
    prefix: -hgcentral
  type: boolean
- doc: recreate tableList for all active assemblies in hg.conf's hgcentral
  id: all
  inputBinding:
    prefix: -all
  type: boolean
- doc: create table with tuples (track, name of bigfile)
  id: big_files
  inputBinding:
    prefix: -bigFiles
  type: boolean
