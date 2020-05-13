class: CommandLineTool
id: _remap.cwl
inputs:
- id: enzymes
  doc: "string     [all] The name 'all' reads in all enzyme names from the REBASE\
    \ database. You can specify enzymes by giving their names with commas between\
    \ then, such as: 'HincII,hinfI,ppiI,hindiii'. The case of the names is not important.\
    \ You can specify a file of enzyme names to read in by giving the name of the\
    \ file holding the enzyme names with a '@' character in front of it, for example,\
    \ '@enz.list'. Blank lines and lines starting with a hash character or '!' are\
    \ ignored and all other lines are concatenated together with a comma character\
    \ ',' and then treated as the list of enzymes to search for. An example of a file\
    \ of enzyme names is: ! my enzymes HincII, ppiII ! other enzymes hindiii HinfI\
    \ PpiI (Any string)"
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: site_len
  doc: integer    [4] This sets the minimum length of the restriction enzyme recognition
    site. Any enzymes with sites shorter than this will be ignored. (Integer from
    2 to 20)
  type: boolean
  inputBinding:
    prefix: -sitelen
outputs: []
cwlVersion: v1.1
baseCommand:
- _remap
