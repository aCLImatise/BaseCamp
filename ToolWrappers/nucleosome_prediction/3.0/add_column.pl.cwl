class: CommandLineTool
id: add_column.pl.cwl
inputs:
- id: in_add_column_add
  doc: ':                 add the column as the first in the file (default: add at
    the end)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_add_column_column
  doc: ':           add the column before column number <num>'
  type: long
  inputBinding:
    prefix: -c
- id: in_add_column_counter
  doc: add a column counter, starting at num.
  type: long
  inputBinding:
    prefix: -n
- id: in_add_column_specified_string
  doc: add a column with the specified string
  type: string
  inputBinding:
    prefix: -s
- id: in_d
  doc: <c1,c2>          add a column which is the value of column1 / column2
  type: boolean
  inputBinding:
    prefix: -d
- id: in_u
  doc: <c1,c2>          add a column which is the value of column1 - column2
  type: boolean
  inputBinding:
    prefix: -u
- id: in_m
  doc: <c1,c2,..,ck>    add a column which is the value of column1 * column2 *..*
    columnk
  type: boolean
  inputBinding:
    prefix: -m
- id: in_a
  doc: <c1,c2,..,ck>    add a column which is the value of column1 + column2 +..+
    columnk
  type: boolean
  inputBinding:
    prefix: -a
- id: in_min
  doc: <c1,c2,..,ck>  add a column which is the value of min(column1,column2,..,columnk)
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: <c1,c2,..,ck>  add a column which is the value of max(column1,column2,..,columnk)
  type: boolean
  inputBinding:
    prefix: -max
- id: in_count
  doc: <c1,c2,..,ck>add a column which is the count of non empty entries over column1,column2,..,columnk.
  type: boolean
  inputBinding:
    prefix: -count
- id: in_ave
  doc: <c1,c2,..,ck>  add a column which is the value of average(column1,column2,..,columnk)
    !!
  type: boolean
  inputBinding:
    prefix: -ave
- id: in_quant
  doc: "<low,high>   the quantile range of values on which to perform the operation\
    \ (default: 0,1)\n!! currently works only with -ave !!\ne.g., to compute a trimmed\
    \ mean in quantiles range 0.1 to 0.8 use: -ave c1,..,ck -quant 0.1,0.8"
  type: boolean
  inputBinding:
    prefix: -quant
- id: in_add_column_specified_file
  doc: ':          add the column from the specified file'
  type: File
  inputBinding:
    prefix: -f
- id: in_sn
  doc: ':           The significant numbers to print (default: 2).'
  type: long
  inputBinding:
    prefix: -sn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_column.pl
