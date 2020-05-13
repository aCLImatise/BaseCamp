class: CommandLineTool
id: filter.pl.bak.cwl
inputs:
- id: c
  doc: ':           The column to which the filter is applied (if not specified, then
    if either column passes, the row passes.'
  type: string
  inputBinding:
    prefix: -c
- id: h
  doc: ':           Number of columns that are headers (default: 1)'
  type: string
  inputBinding:
    prefix: -h
- id: min
  doc: ':         Filter passes if the number is above or equal to <num>'
  type: string
  inputBinding:
    prefix: -min
- id: mins
  doc: ':        Filter passes if the number is strictly above <num>'
  type: string
  inputBinding:
    prefix: -mins
- id: min_l
  doc: ':        Filter passes if the number of characters of the column is >= <num>'
  type: string
  inputBinding:
    prefix: -minl
- id: max
  doc: ':         Filter passes if the number is below or equal to <num>'
  type: string
  inputBinding:
    prefix: -max
- id: maxs
  doc: ':        Filter passes if the number is strictly below <num>'
  type: string
  inputBinding:
    prefix: -maxs
- id: max_l
  doc: ':        Filter passes if the number of characters of the column is <= <num>'
  type: string
  inputBinding:
    prefix: -maxl
- id: abs
  doc: ':         Filter passes if the number is above <num> or below -<num>'
  type: string
  inputBinding:
    prefix: -abs
- id: babs
  doc: ':        Filter passes if the number is above -<num> and below <num>'
  type: string
  inputBinding:
    prefix: -babs
- id: str
  doc: ':         Filter passes if the column contains <str>'
  type: string
  inputBinding:
    prefix: -str
- id: est_r
  doc: ':        Filter passes if the column is equal to <str>'
  type: string
  inputBinding:
    prefix: -estr
- id: est_r_list
  doc: ':   Filter passes if the column is equal to one of the values in <str1;str2;...>'
  type: string
  inputBinding:
    prefix: -estr_list
- id: nstr
  doc: ':        Filter passes if the column is *not* equal to <str>'
  type: string
  inputBinding:
    prefix: -nstr
- id: ne
  doc: ':                Filter passes if string is not empty'
  type: boolean
  inputBinding:
    prefix: -ne
- id: e
  doc: ':                 Filter passes if string is empty'
  type: boolean
  inputBinding:
    prefix: -e
- id: min_pass
  doc: ':    Filter passes if at least num columns pass the filter (default: 1)'
  type: string
  inputBinding:
    prefix: -min_pass
- id: rel_min_pass
  doc: :Filter passes if at least int(num*rowlength) columns pass the filter
  type: string
  inputBinding:
    prefix: -rel_min_pass
- id: numeric
  doc: ':           Filter passes if string is numeric'
  type: boolean
  inputBinding:
    prefix: -numeric
- id: pass_from
  doc: ':         Print all rows from the point that one row passed the filter'
  type: boolean
  inputBinding:
    prefix: -pass_from
- id: u
  doc: ':           Use column <num> as the value for the the specified filters (e.g.
    for the parameters " -c 1 -u 0 -mins " rows whose value in the second column is
    greater than the value in the first column will pass)'
  type: string
  inputBinding:
    prefix: -u
- id: print_num
  doc: ':         Prints the number of columns that passed the filter'
  type: boolean
  inputBinding:
    prefix: -print_num
- id: sk
  doc: ':          Print first num rows without filtering'
  type: string
  inputBinding:
    prefix: -sk
- id: skip
  doc: ':        Print first num rows without filtering'
  type: string
  inputBinding:
    prefix: -skip
- id: q
  doc: ':                 Quite mode (default is verbose)'
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- filter.pl.bak
