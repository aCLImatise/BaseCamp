class: CommandLineTool
id: _maskfeat.cwl
inputs:
- id: type
  doc: "string     [repeat*] By default any feature in the feature table with a type\
    \ starting 'repeat' is masked. You can set this to be any feature type you wish\
    \ to mask. See http://www.ebi.ac.uk/embl/WebFeat/ for a list of the EMBL feature\
    \ types and see Appendix A of the Swissprot user manual in http://www.expasy.org/sprot/userman.html\
    \ for a list of the Swissprot feature types. The type may be wildcarded by using\
    \ '*'. If you wish to mask more than one type, separate their names with spaces\
    \ or commas, eg: *UTR repeat* (Any string)"
  type: boolean
  inputBinding:
    prefix: -type
- id: to_lower
  doc: toggle     [N] The region can be 'masked' by converting the sequence characters
    to lower-case, some non-EMBOSS programs e.g. fasta can interpret this as a masked
    region. The sequence is unchanged apart from the case change. You might like to
    ensure that the whole sequence is in upper-case before masking the specified regions
    to lower-case by using the '-supper' flag.
  type: boolean
  inputBinding:
    prefix: -tolower
outputs: []
cwlVersion: v1.1
baseCommand:
- _maskfeat
