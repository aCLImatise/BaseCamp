class: CommandLineTool
id: modify_column.pl.cwl
inputs:
- id: in_column_modify_default
  doc: 'The column to modify (default: 0; specify multiple columns using commas) (zero-based)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_rows_modify_default
  doc: 'The rows to modify (default: All except -skipped; specify multiple rows using
    commas) (zero-based)'
  type: long?
  inputBinding:
    prefix: -r
- id: in_apply_transformation_columns
  doc: Apply transformation to ALL columns
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_min
  doc: Apply transformation only if entry is above (or equal) num
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: Apply transformation only if entry is below (or equal) num
  type: long?
  inputBinding:
    prefix: -max
- id: in_mins
  doc: Apply transformation only if entry is strictly above num
  type: long?
  inputBinding:
    prefix: -mins
- id: in_maxs
  doc: Apply transformation only if entry is strictly below num
  type: long?
  inputBinding:
    prefix: -maxs
- id: in_rng
  doc: <num1,num2> Apply transformation only if num1<=entry<=num2
  type: boolean?
  inputBinding:
    prefix: -rng
- id: in_rngs
  doc: <num1,num2> Apply transformation only if num1<entry<num2
  type: boolean?
  inputBinding:
    prefix: -rngs
- id: in_abs
  doc: ':    Apply transformation only if entry is above <num> or below -<num>'
  type: long?
  inputBinding:
    prefix: -abs
- id: in_babs
  doc: ':   Apply transformation only if entry is above -<num> and below <num>'
  type: long?
  inputBinding:
    prefix: -babs
- id: in_str
  doc: ':    Apply transformation only if entry contains <str>'
  type: string?
  inputBinding:
    prefix: -str
- id: in_est_r
  doc: ':   Apply transformation only if entry is equal to <str>'
  type: string?
  inputBinding:
    prefix: -estr
- id: in_nstr
  doc: ':   Apply transformation only if entry is *not* equal to <str>'
  type: string?
  inputBinding:
    prefix: -nstr
- id: in_ne
  doc: ':           Apply transormation only if entry is not empty'
  type: boolean?
  inputBinding:
    prefix: -ne
- id: in_empty
  doc: ':        Apply transormation only if entry is empty'
  type: boolean?
  inputBinding:
    prefix: -empty
- id: in_pairs
  doc: ": Apply transformation only if the entry is from a row and column\nthat appear\
    \ in a line of <file> as <row name> <tab> <column name>"
  type: File?
  inputBinding:
    prefix: -pairs
- id: in_skip
  doc: ':   Skip num rows in the file (default: 0)'
  type: long?
  inputBinding:
    prefix: -skip
- id: in_skip_c
  doc: ':  Skip num columns (when applying to all columns, can skip the first few)
    (default: 0)'
  type: long?
  inputBinding:
    prefix: -skipc
- id: in_add_num_column
  doc: 'Add <num> to the column (default: 0)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_substract_num_column
  doc: 'Substract <num> to the column (default: 0)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_multiply_column_num
  doc: "Multiply column by <num> (default: 1) (write '\"-1\"' to pass negative numbers)"
  type: long?
  inputBinding:
    prefix: -m
- id: in_divide_column_num
  doc: "Divide column by <num> (default: 1) (write '\"-1\"' to pass negative numbers)"
  type: long?
  inputBinding:
    prefix: -d
- id: in_in_v
  doc: Inverse of column
  type: boolean?
  inputBinding:
    prefix: -inv
- id: in_ab
  doc: Absolute value of column
  type: boolean?
  inputBinding:
    prefix: -ab
- id: in_neg_two_pos
  doc: Convert negative numbers to positive
  type: boolean?
  inputBinding:
    prefix: -neg2pos
- id: in_log
  doc: Take log (natural base) of the column
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_log_two
  doc: Take log (base 2) of the column
  type: boolean?
  inputBinding:
    prefix: -log2
- id: in_log_one_zero
  doc: Take log (base 10) of the column
  type: boolean?
  inputBinding:
    prefix: -log10
- id: in_exp
  doc: Take num ** (value of the column)
  type: long?
  inputBinding:
    prefix: -exp
- id: in_take_e_value
  doc: Take e=2.1782... ** (value of column)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_pow
  doc: Raise vaule to the power of num (value of the column)
  type: long?
  inputBinding:
    prefix: -pow
- id: in_substr
  doc: If the column has more than num chars, then substr the first num
  type: long?
  inputBinding:
    prefix: -substr
- id: in_set_min
  doc: If the column has a value less than num, set it to num
  type: long?
  inputBinding:
    prefix: -set_min
- id: in_set_max
  doc: If the column has a value greater than num, set it to num
  type: long?
  inputBinding:
    prefix: -set_max
- id: in_type
  doc: ':   <Number/String> (default: Number)'
  type: long?
  inputBinding:
    prefix: -type
- id: in_len
  doc: Replace value (treated as a string) by its length in characters
  type: boolean?
  inputBinding:
    prefix: -len
- id: in_reverse
  doc: Reverse the string (ABC becomes CBA)
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_dc
  doc: Divide the column by the number in column <col>
  type: long?
  inputBinding:
    prefix: -dc
- id: in_mc
  doc: Multiply the column by the number in column <col>
  type: long?
  inputBinding:
    prefix: -mc
- id: in_ac
  doc: Add the number in column <col> to the column
  type: long?
  inputBinding:
    prefix: -ac
- id: in_sc
  doc: Subtract the number in column <col> from the column
  type: long?
  inputBinding:
    prefix: -sc
- id: in_minc
  doc: Take the min of the column and <col>
  type: long?
  inputBinding:
    prefix: -minc
- id: in_max_c
  doc: Take the max of the column and <col>
  type: long?
  inputBinding:
    prefix: -maxc
- id: in_bins
  doc: ':   discretize the column into <num> bins.'
  type: long?
  inputBinding:
    prefix: -bins
- id: in_rescale
  doc: "given as 'bottom,top'. linearly rescales the data in the column so that the\
    \ smallest value will\nbe <bottom> and the largest will be <top>. If the data\
    \ is equal in all entries, all entries\nwill be set to <bottom>."
  type: string?
  inputBinding:
    prefix: -rescale
- id: in_rescale_limits
  doc: ": given as 'min,max'. when used with -rescale assumes that the maximal value\
    \ of the column is\nmax and the minimal value is min."
  type: long?
  inputBinding:
    prefix: -rescale_limits
- id: in_pd
  doc: "makes the column a probability distribution by changing negative values to\
    \ zero and\nthen dividing by the sum of the column."
  type: boolean?
  inputBinding:
    prefix: -pd
- id: in_precision_take_default
  doc: "Precision (take only <num> sig. digits. default: don't fix)"
  type: long?
  inputBinding:
    prefix: -p
- id: in_res
  doc: Convert numbers to a <num> resolution (e.g., 0.05)
  type: long?
  inputBinding:
    prefix: -res
- id: in_astr
  doc: 'Add <str> to the end of the column (default: "")'
  type: string?
  inputBinding:
    prefix: -astr
- id: in_bstr
  doc: 'Add <str> to the beginning of the column (default: "")'
  type: string?
  inputBinding:
    prefix: -bstr
- id: in_set
  doc: Set the entry to <str> (put EMPTY for getting an empty entry)
  type: string?
  inputBinding:
    prefix: -set
- id: in_rm_re
  doc: Remove string that matches the regular expression <regexp> from column
  type: string?
  inputBinding:
    prefix: -rmre
- id: in_pv
  doc: "Set numerical values around a given pivot (see -pv_val, -pv_high, -pv_low).\
    \ Activated when <bool> = 1.\nNon numerical values are not modified."
  type: boolean?
  inputBinding:
    prefix: -pv
- id: in_pv_val
  doc: '<num> The pivot value (default: 0.05)'
  type: boolean?
  inputBinding:
    prefix: -pv_val
- id: in_pv_high
  doc: 'The number to set values greater then the pivot value (default: 0)'
  type: long?
  inputBinding:
    prefix: -pv_high
- id: in_pv_low
  doc: '<num> The number to set values smaller equal then the pivot value (default:
    1)'
  type: boolean?
  inputBinding:
    prefix: -pv_low
- id: in_splt_d
  doc: 'Split the column by the delimiter <del> (default: none).'
  type: string?
  inputBinding:
    prefix: -splt_d
- id: in_cumul
  doc: Accumulate (row i = row 1 + .. + row i)
  type: boolean?
  inputBinding:
    prefix: -cumul
- id: in_when_dividing_zero
  doc: 'When dividing by zero, uses <num> instead of giving an error (default: 999999)'
  type: long?
  inputBinding:
    prefix: -zero
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- modify_column.pl
