class: CommandLineTool
id: gxw2stats.pl.cwl
inputs:
- id: ns
  doc: ':        Num samples'
  type: string
  inputBinding:
    prefix: -ns
- id: sfd
  doc: ':             Description sequence feature'
  type: boolean
  inputBinding:
    prefix: -sfd
- id: smc
  doc: ':             Single matrices counts'
  type: boolean
  inputBinding:
    prefix: -smc
- id: amc
  doc: ':             All matrices counts'
  type: boolean
  inputBinding:
    prefix: -amc
- id: camc
  doc: ':      Configuration adjacent matrices counts (str has the form: <min;max;inc;XXX;NoFunction/Gaussian;mean;std>)
    [XXX] = CombinedAdjacentMatricesCount/SeparateAdjacentMatricesCount/SeparateProximalMatricesCount'
  type: string
  inputBinding:
    prefix: -camc
- id: cp
  doc: ':              Configuration probabilities'
  type: boolean
  inputBinding:
    prefix: -cp
- id: cmc
  doc: ':             Configuration matrices coverage'
  type: boolean
  inputBinding:
    prefix: -cmc
- id: xml
  doc: ':             print only the xml file'
  type: boolean
  inputBinding:
    prefix: -xml
- id: run
  doc: ':       Print the stdout and stderr of the program into the file <str>'
  type: string
  inputBinding:
    prefix: -run
- id: s_xml
  doc: ':      Save the xml file into <str>'
  type: string
  inputBinding:
    prefix: -sxml
outputs: []
cwlVersion: v1.1
baseCommand:
- gxw2stats.pl
