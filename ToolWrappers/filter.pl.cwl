class: CommandLineTool
id: filter.pl.cwl
inputs:
- id: in_column_filter_applied
  doc: ":           The column to which the filter is applied (if not specified,\n\
    then if either column passes, the row passes."
  type: long
  inputBinding:
    prefix: -c
- id: in_number_columns_headers
  doc: ':           Number of columns that are headers (default: 1)'
  type: long
  inputBinding:
    prefix: -h
- id: in_min
  doc: ':         Filter passes if the number is above or equal to <num>'
  type: long
  inputBinding:
    prefix: -min
- id: in_mins
  doc: ':        Filter passes if the number is strictly above <num>'
  type: long
  inputBinding:
    prefix: -mins
- id: in_min_l
  doc: ':        Filter passes if the number of characters of the column is >= <num>'
  type: long
  inputBinding:
    prefix: -minl
- id: in_max
  doc: ':         Filter passes if the number is below or equal to <num>'
  type: long
  inputBinding:
    prefix: -max
- id: in_maxs
  doc: ':        Filter passes if the number is strictly below <num>'
  type: long
  inputBinding:
    prefix: -maxs
- id: in_max_l
  doc: ':        Filter passes if the number of characters of the column is <= <num>'
  type: long
  inputBinding:
    prefix: -maxl
- id: in_abs
  doc: ':         Filter passes if the number is above <num> or below -<num>'
  type: long
  inputBinding:
    prefix: -abs
- id: in_babs
  doc: ':        Filter passes if the number is above -<num> and below <num>'
  type: long
  inputBinding:
    prefix: -babs
- id: in_str
  doc: ':         Filter passes if the column contains <str>'
  type: string
  inputBinding:
    prefix: -str
- id: in_est_r
  doc: ':        Filter passes if the column is equal to <str>'
  type: string
  inputBinding:
    prefix: -estr
- id: in_est_r_list
  doc: ':   Filter passes if the column is equal to one of the values in <str1;str2;...>'
  type: long
  inputBinding:
    prefix: -estr_list
- id: in_nstr
  doc: ':        Filter passes if the column is *not* equal to <str>'
  type: string
  inputBinding:
    prefix: -nstr
- id: in_ne
  doc: ':                Filter passes if string is not empty'
  type: boolean
  inputBinding:
    prefix: -ne
- id: in_e
  doc: ':                 Filter passes if string is empty'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_min_pass
  doc: ':    Filter passes if at least num columns pass the filter (default: 1)'
  type: long
  inputBinding:
    prefix: -min_pass
- id: in_rel_min_pass
  doc: :Filter passes if at least int(num*rowlength) columns pass the filter
  type: long
  inputBinding:
    prefix: -rel_min_pass
- id: in_numeric
  doc: ':           Filter passes if string is numeric'
  type: boolean
  inputBinding:
    prefix: -numeric
- id: in_pass_from
  doc: ':         Print all rows from the point that one row passed the filter'
  type: boolean
  inputBinding:
    prefix: -pass_from
- id: in_use_column_num
  doc: ":           Use column <num> as the value for the the specified filters (e.g.\n\
    for the parameters \" -c 1 -u 0 -mins \" rows whose value in the second\ncolumn\
    \ is greater than the value in the first column will pass)"
  type: long
  inputBinding:
    prefix: -u
- id: in_print_num
  doc: ':         Prints the number of columns that passed the filter'
  type: boolean
  inputBinding:
    prefix: -print_num
- id: in_sk
  doc: ':          Print first num rows without filtering'
  type: long
  inputBinding:
    prefix: -sk
- id: in_skip
  doc: ':        Print first num rows without filtering'
  type: long
  inputBinding:
    prefix: -skip
- id: in_quite_mode_default
  doc: ':                 Quite mode (default is verbose)'
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter.pl
