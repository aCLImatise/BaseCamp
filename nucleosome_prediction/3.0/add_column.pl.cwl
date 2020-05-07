class: CommandLineTool
id: add_column.pl.bak.cwl
inputs:
- id: b
  doc: ':                 add the column as the first in the file (default: add at
    the end)'
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: ':           add the column before column number <num>'
  type: string
  inputBinding:
    prefix: -c
- id: n
  doc: add a column counter, starting at num.
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: add a column with the specified string
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: <c1,c2>          add a column which is the value of column1 / column2
  type: boolean
  inputBinding:
    prefix: -d
- id: u
  doc: <c1,c2>          add a column which is the value of column1 - column2
  type: boolean
  inputBinding:
    prefix: -u
- id: m
  doc: <c1,c2,..,ck>    add a column which is the value of column1 * column2 *..*
    columnk
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: <c1,c2,..,ck>    add a column which is the value of column1 + column2 +..+
    columnk
  type: boolean
  inputBinding:
    prefix: -a
- id: min
  doc: <c1,c2,..,ck>  add a column which is the value of min(column1,column2,..,columnk)
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: <c1,c2,..,ck>  add a column which is the value of max(column1,column2,..,columnk)
  type: boolean
  inputBinding:
    prefix: -max
- id: count
  doc: <c1,c2,..,ck>add a column which is the count of non empty entries over column1,column2,..,columnk.
  type: boolean
  inputBinding:
    prefix: -count
- id: ave
  doc: <c1,c2,..,ck>  add a column which is the value of average(column1,column2,..,columnk)
    !!
  type: boolean
  inputBinding:
    prefix: -ave
- id: quant
  doc: '<low,high>   the quantile range of values on which to perform the operation
    (default: 0,1) !! currently works only with -ave !! e.g., to compute a trimmed
    mean in quantiles range 0.1 to 0.8 use: -ave c1,..,ck -quant 0.1,0.8'
  type: boolean
  inputBinding:
    prefix: -quant
- id: f
  doc: ':          add the column from the specified file'
  type: string
  inputBinding:
    prefix: -f
- id: sn
  doc: ':           The significant numbers to print (default: 2).'
  type: long
  inputBinding:
    prefix: -sn
outputs: []
cwlVersion: v1.1
baseCommand:
- add_column.pl.bak
