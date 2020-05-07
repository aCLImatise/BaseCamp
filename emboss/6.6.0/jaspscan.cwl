class: CommandLineTool
id: jaspscan.cwl
inputs:
- id: menu
  doc: 'menu       [C] Matrix set (Values: C (Core); F (Fam); P (Phylofacts); N (CNE);
    O (POLII); S (SPLICE); B (PBM); L (PBM_HLH); H (PBM_HOMEO))'
  type: boolean
  inputBinding:
    prefix: -menu
- id: matrices
  doc: "string     [all] The name 'all' reads in all matrix files from the selected\
    \ JASPAR matrix set. You can specify individual matrices by giving their names\
    \ with commas between then, such as: 'ma0001.1,ma0015*'. The case of the names\
    \ is not important. You can specify a file of matrix names to read in by giving\
    \ the name of the file holding the matrix names with a '@' character in front\
    \ of it, for example, '@matrix.list'. Blank lines and lines starting with a hash\
    \ character or '!' are ignored and all other lines are concatenated together with\
    \ a comma character ',' and then treated as the list of enzymes to search for.\
    \ An example of a file of matrix names is: ! my matrices ma0001.1, ma0002.1 !\
    \ other matrices ma0010.1 ma0032* ma0053.1 (Any string)"
  type: boolean
  inputBinding:
    prefix: -matrices
- id: threshold
  doc: float      [80.0] If the matrix score is greater than or equal to this percentage
    then a hit will be reported (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- jaspscan
