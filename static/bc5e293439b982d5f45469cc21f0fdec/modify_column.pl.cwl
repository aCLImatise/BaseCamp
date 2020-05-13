class: CommandLineTool
id: modify_column.pl.bak.cwl
inputs:
- id: c
  doc: 'The column to modify (default: 0; specify multiple columns using commas) (zero-based)'
  type: string
  inputBinding:
    prefix: -c
- id: r
  doc: 'The rows to modify (default: All except -skipped; specify multiple rows using
    commas) (zero-based)'
  type: string
  inputBinding:
    prefix: -r
- id: a
  doc: Apply transformation to ALL columns
  type: boolean
  inputBinding:
    prefix: -A
- id: min
  doc: Apply transformation only if entry is above (or equal) num
  type: string
  inputBinding:
    prefix: -min
- id: max
  doc: Apply transformation only if entry is below (or equal) num
  type: string
  inputBinding:
    prefix: -max
- id: mins
  doc: Apply transformation only if entry is strictly above num
  type: string
  inputBinding:
    prefix: -mins
- id: maxs
  doc: Apply transformation only if entry is strictly below num
  type: string
  inputBinding:
    prefix: -maxs
- id: rng
  doc: <num1,num2> Apply transformation only if num1<=entry<=num2
  type: boolean
  inputBinding:
    prefix: -rng
- id: rngs
  doc: <num1,num2> Apply transformation only if num1<entry<num2
  type: boolean
  inputBinding:
    prefix: -rngs
- id: abs
  doc: ':    Apply transformation only if entry is above <num> or below -<num>'
  type: string
  inputBinding:
    prefix: -abs
- id: babs
  doc: ':   Apply transformation only if entry is above -<num> and below <num>'
  type: string
  inputBinding:
    prefix: -babs
- id: str
  doc: ':    Apply transformation only if entry contains <str>'
  type: string
  inputBinding:
    prefix: -str
- id: est_r
  doc: ':   Apply transformation only if entry is equal to <str>'
  type: string
  inputBinding:
    prefix: -estr
- id: nstr
  doc: ':   Apply transformation only if entry is *not* equal to <str>'
  type: string
  inputBinding:
    prefix: -nstr
- id: ne
  doc: ':           Apply transormation only if entry is not empty'
  type: boolean
  inputBinding:
    prefix: -ne
- id: empty
  doc: ':        Apply transormation only if entry is empty'
  type: boolean
  inputBinding:
    prefix: -empty
- id: pairs
  doc: ': Apply transformation only if the entry is from a row and column  that appear
    in a line of <file> as <row name> <tab> <column name> '
  type: File
  inputBinding:
    prefix: -pairs
- id: skip
  doc: ':   Skip num rows in the file (default: 0)'
  type: string
  inputBinding:
    prefix: -skip
- id: skip_c
  doc: ':  Skip num columns (when applying to all columns, can skip the first few)
    (default: 0)'
  type: string
  inputBinding:
    prefix: -skipc
- id: pd
  doc: makes the column a probability distribution by changing negative values to
    zero and then dividing by the sum of the column.
  type: boolean
  inputBinding:
    prefix: -pd
- id: p
  doc: "Precision (take only <num> sig. digits. default: don't fix)"
  type: string
  inputBinding:
    prefix: -p
- id: res
  doc: Convert numbers to a <num> resolution (e.g., 0.05)
  type: string
  inputBinding:
    prefix: -res
- id: astr
  doc: 'Add <str> to the end of the column (default: "")'
  type: string
  inputBinding:
    prefix: -astr
- id: bstr
  doc: 'Add <str> to the beginning of the column (default: "")'
  type: string
  inputBinding:
    prefix: -bstr
- id: set
  doc: Set the entry to <str> (put EMPTY for getting an empty entry)
  type: string
  inputBinding:
    prefix: -set
- id: rm_re
  doc: Remove string that matches the regular expression <regexp> from column
  type: string
  inputBinding:
    prefix: -rmre
- id: pv
  doc: Set numerical values around a given pivot (see -pv_val, -pv_high, -pv_low).
    Activated when <bool> = 1. Non numerical values are not modified.
  type: boolean
  inputBinding:
    prefix: -pv
- id: pv_val
  doc: '<num> The pivot value (default: 0.05)     '
  type: boolean
  inputBinding:
    prefix: -pv_val
- id: pv_high
  doc: 'The number to set values greater then the pivot value (default: 0)'
  type: string
  inputBinding:
    prefix: -pv_high
- id: pv_low
  doc: '<num> The number to set values smaller equal then the pivot value (default:
    1)'
  type: boolean
  inputBinding:
    prefix: -pv_low
- id: splt_d
  doc: 'Split the column by the delimiter <del> (default: none).'
  type: string
  inputBinding:
    prefix: -splt_d
- id: cumul
  doc: Accumulate (row i = row 1 + .. + row i)
  type: boolean
  inputBinding:
    prefix: -cumul
- id: zero
  doc: 'When dividing by zero, uses <num> instead of giving an error (default: 999999)'
  type: string
  inputBinding:
    prefix: -zero
outputs: []
cwlVersion: v1.1
baseCommand:
- modify_column.pl.bak
