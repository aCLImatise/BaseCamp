class: CommandLineTool
id: comet.exe.cwl
inputs:
- id: or
  doc: comet.exe -F1000 -L1500 file1.mzXML    <- to search scans 1000 through 1500
  type: string
  inputBinding:
    position: 0
- id: or
  doc: comet.exe -pParams.txt *.mzXML         <- use parameters in the file 'Params.txt'
  type: string
  inputBinding:
    position: 1
- id: p
  doc: to print out a comet.params file (named comet.params.new)
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: <params> to specify an alternate parameters file (default comet.params)
  type: boolean
  inputBinding:
    prefix: -P
- id: n
  doc: <name>   to specify an alternate output base name; valid only with one input
    file
  type: boolean
  inputBinding:
    prefix: -N
- id: d
  doc: <dbase>  to specify a sequence database, overriding entry in parameters file
  type: boolean
  inputBinding:
    prefix: -D
- id: f
  doc: <num>    to specify the first/start scan to search, overriding entry in parameters
    file
  type: boolean
  inputBinding:
    prefix: -F
- id: l
  doc: <num>    to specify the last/end scan to search, overriding entry in parameters
    file (-L option is required if -F option is used)
  type: boolean
  inputBinding:
    prefix: -L
- id: i
  doc: create peptide index file only (specify .idx file as database for index search)
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- comet.exe
