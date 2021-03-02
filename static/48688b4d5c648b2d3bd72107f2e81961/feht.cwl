class: CommandLineTool
id: feht.cwl
inputs:
- id: in_info_file
  doc: File of metadata information
  type: File?
  inputBinding:
    prefix: --infoFile
- id: in_data_file
  doc: File of binary or single-nucleotide variant data
  type: File?
  inputBinding:
    prefix: --datafile
- id: in_one
  doc: "\"Group1Name Group1Item Group1Item Group1Item\"\nGroup1 column name, followed\
    \ by optional Group1\nlabels to include as part of the group"
  type: boolean?
  inputBinding:
    prefix: --one
- id: in_two
  doc: "\"Group2Name Group2Item Group2Item Group2Item\"\nGroup2 column name, followed\
    \ by optional Group2\nlabels to include as part of the group"
  type: boolean?
  inputBinding:
    prefix: --two
- id: in_delimiter
  doc: "[',', '\\t' ...], DEFAULT='\\t'\nDelimiter used for both the metadata and\
    \ data file"
  type: boolean?
  inputBinding:
    prefix: --delimiter
- id: in_mode
  doc: "['binary', 'snp'], DEFAULT='binary'\nMode for program data; either 'binary'\
    \ or 'snp'"
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_correction
  doc: "['none', 'bonferroni'], DEFAULT='bonferroni'\nMultiple-testing correction\
    \ to apply"
  type: boolean?
  inputBinding:
    prefix: --correction
- id: in_ratio_filter
  doc: "[Filter results by ratio (0.00-1.00), DEFAULT=0]\nDisplay only those results\
    \ greater than or equal to\nthe value"
  type: boolean?
  inputBinding:
    prefix: --ratioFilter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- feht
