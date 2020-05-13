class: CommandLineTool
id: makeTableList.cwl
inputs:
- id: assemblies
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: host
  doc: 'show tables: mysql host'
  type: boolean
  inputBinding:
    prefix: -host
- id: user
  doc: 'show tables: mysql user'
  type: boolean
  inputBinding:
    prefix: -user
- id: password
  doc: 'show tables: mysql password'
  type: boolean
  inputBinding:
    prefix: -password
- id: to_prof
  doc: 'optional: mysql profile to write table list to (target server)'
  type: boolean
  inputBinding:
    prefix: -toProf
- id: to_host
  doc: 'alternative to toProf: mysql target host'
  type: boolean
  inputBinding:
    prefix: -toHost
- id: to_user
  doc: 'alternative to toProf: mysql target user'
  type: boolean
  inputBinding:
    prefix: -toUser
- id: to_password
  doc: 'alternative to toProf: mysql target pwd'
  type: boolean
  inputBinding:
    prefix: -toPassword
- id: hg_central
  doc: specify an alternative hgcentral db name when using -all
  type: boolean
  inputBinding:
    prefix: -hgcentral
- id: all
  doc: recreate tableList for all active assemblies in hg.conf's hgcentral
  type: boolean
  inputBinding:
    prefix: -all
- id: big_files
  doc: create table with tuples (track, name of bigfile)
  type: boolean
  inputBinding:
    prefix: -bigFiles
outputs: []
cwlVersion: v1.1
baseCommand:
- makeTableList
