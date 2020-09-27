class: CommandLineTool
id: mageckGSEA.cwl
inputs:
- id: in__reversevaluereverse_order
  doc: ",  --reverse_value\nReverse the order of the gene."
  type: boolean
  inputBinding:
    prefix: -e
- id: in__sortbypsort_pathways
  doc: ",  --sort_byp\nSort the pathways by p value."
  type: boolean
  inputBinding:
    prefix: -s
- id: in__scorecolumn_scorecolumnthe
  doc: ",  --score_column <score_column>\nThe column for gene scores. If you just\
    \ want to use the ranking of the\ngene (located at the 1st column), use 0. The\
    \ column number starts from\n0. Default: 0."
  type: long
  inputBinding:
    prefix: -c
- id: in__permtime_permtimepermutations
  doc: ",  --perm_time <perm_time>\nPermutations, default 1000."
  type: long
  inputBinding:
    prefix: -p
- id: in__pathwayname_pathwaynamename
  doc: ",  --pathway_name <pathway_name>\nName of the pathway to be tested. If not\
    \ found, will test all\npathways."
  type: string
  inputBinding:
    prefix: -n
- id: in__outputfile_outputfilethe
  doc: ",  --output_file <output_file>\nThe name of the output file. Use - to print\
    \ to standard output."
  type: File
  inputBinding:
    prefix: -o
- id: in__rankfile_rankfilerequired
  doc: ",  --rank_file <rank_file>\n(required)  Rank file. The first column of the\
    \ rank file must be the\ngene name."
  type: File
  inputBinding:
    prefix: -r
- id: in__gmtfile_gmtfilerequired
  doc: ",  --gmt_file <gmt_file>\n(required)  The pathway annotation in GMT format."
  type: File
  inputBinding:
    prefix: -g
- id: in_pathway_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile_outputfilethe
  doc: ",  --output_file <output_file>\nThe name of the output file. Use - to print\
    \ to standard output."
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile_outputfilethe)
cwlVersion: v1.1
baseCommand:
- mageckGSEA
