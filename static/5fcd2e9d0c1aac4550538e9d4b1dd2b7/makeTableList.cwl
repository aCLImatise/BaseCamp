class: CommandLineTool
id: makeTableList.cwl
inputs:
- id: in_host
  doc: 'show tables: mysql host'
  type: boolean
  inputBinding:
    prefix: -host
- id: in_user
  doc: 'show tables: mysql user'
  type: boolean
  inputBinding:
    prefix: -user
- id: in_password
  doc: 'show tables: mysql password'
  type: boolean
  inputBinding:
    prefix: -password
- id: in_to_prof
  doc: 'optional: mysql profile to write table list to (target server)'
  type: boolean
  inputBinding:
    prefix: -toProf
- id: in_to_host
  doc: 'alternative to toProf: mysql target host'
  type: boolean
  inputBinding:
    prefix: -toHost
- id: in_to_user
  doc: 'alternative to toProf: mysql target user'
  type: boolean
  inputBinding:
    prefix: -toUser
- id: in_to_password
  doc: 'alternative to toProf: mysql target pwd'
  type: boolean
  inputBinding:
    prefix: -toPassword
- id: in_hg_central
  doc: specify an alternative hgcentral db name when using -all
  type: boolean
  inputBinding:
    prefix: -hgcentral
- id: in_all
  doc: recreate tableList for all active assemblies in hg.conf's hgcentral
  type: boolean
  inputBinding:
    prefix: -all
- id: in_big_files
  doc: create table with tuples (track, name of bigfile)
  type: boolean
  inputBinding:
    prefix: -bigFiles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeTableList
