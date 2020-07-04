version 1.0

task ModifyColumn.pl.bak {
  input {
    String? column_modify_default
    String? rows_modify_default
    Boolean? apply_transformation_columns
    String? min
    String? max
    String? mins
    String? maxs
    Boolean? rng
    Boolean? rngs
    String? abs
    String? babs
    String? str
    String? est_r
    String? nstr
    Boolean? ne
    Boolean? empty
    File? pairs
    String? skip
    String? skip_c
    Boolean? pd
    String? precision_take_fix
    String? res
    String? astr
    String? bstr
    String? set
    String? rm_re
    Boolean? pv
    Boolean? pv_val
    String? pv_high
    Boolean? pv_low
    String? splt_d
    Boolean? cumul
    String? when_dividing_zero
  }
  command <<<
    modify_column.pl.bak \
      ~{if defined(column_modify_default) then ("-c " +  '"' + column_modify_default + '"') else ""} \
      ~{if defined(rows_modify_default) then ("-r " +  '"' + rows_modify_default + '"') else ""} \
      ~{true="-A" false="" apply_transformation_columns} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(mins) then ("-mins " +  '"' + mins + '"') else ""} \
      ~{if defined(maxs) then ("-maxs " +  '"' + maxs + '"') else ""} \
      ~{true="-rng" false="" rng} \
      ~{true="-rngs" false="" rngs} \
      ~{if defined(abs) then ("-abs " +  '"' + abs + '"') else ""} \
      ~{if defined(babs) then ("-babs " +  '"' + babs + '"') else ""} \
      ~{if defined(str) then ("-str " +  '"' + str + '"') else ""} \
      ~{if defined(est_r) then ("-estr " +  '"' + est_r + '"') else ""} \
      ~{if defined(nstr) then ("-nstr " +  '"' + nstr + '"') else ""} \
      ~{true="-ne" false="" ne} \
      ~{true="-empty" false="" empty} \
      ~{if defined(pairs) then ("-pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(skip_c) then ("-skipc " +  '"' + skip_c + '"') else ""} \
      ~{true="-pd" false="" pd} \
      ~{if defined(precision_take_fix) then ("-p " +  '"' + precision_take_fix + '"') else ""} \
      ~{if defined(res) then ("-res " +  '"' + res + '"') else ""} \
      ~{if defined(astr) then ("-astr " +  '"' + astr + '"') else ""} \
      ~{if defined(bstr) then ("-bstr " +  '"' + bstr + '"') else ""} \
      ~{if defined(set) then ("-set " +  '"' + set + '"') else ""} \
      ~{if defined(rm_re) then ("-rmre " +  '"' + rm_re + '"') else ""} \
      ~{if defined(pv) then ("-pv " +  '"' + pv + '"') else ""} \
      ~{true="-pv_val" false="" pv_val} \
      ~{if defined(pv_high) then ("-pv_high " +  '"' + pv_high + '"') else ""} \
      ~{true="-pv_low" false="" pv_low} \
      ~{if defined(splt_d) then ("-splt_d " +  '"' + splt_d + '"') else ""} \
      ~{true="-cumul" false="" cumul} \
      ~{if defined(when_dividing_zero) then ("-zero " +  '"' + when_dividing_zero + '"') else ""}
  >>>
  parameter_meta {
    column_modify_default: "The column to modify (default: 0; specify multiple columns using commas) (zero-based)"
    rows_modify_default: "The rows to modify (default: All except -skipped; specify multiple rows using commas) (zero-based)"
    apply_transformation_columns: "Apply transformation to ALL columns"
    min: "Apply transformation only if entry is above (or equal) num"
    max: "Apply transformation only if entry is below (or equal) num"
    mins: "Apply transformation only if entry is strictly above num"
    maxs: "Apply transformation only if entry is strictly below num"
    rng: "<num1,num2> Apply transformation only if num1<=entry<=num2"
    rngs: "<num1,num2> Apply transformation only if num1<entry<num2"
    abs: ":    Apply transformation only if entry is above <num> or below -<num>"
    babs: ":   Apply transformation only if entry is above -<num> and below <num>"
    str: ":    Apply transformation only if entry contains <str>"
    est_r: ":   Apply transformation only if entry is equal to <str>"
    nstr: ":   Apply transformation only if entry is *not* equal to <str>"
    ne: ":           Apply transormation only if entry is not empty"
    empty: ":        Apply transormation only if entry is empty"
    pairs: ": Apply transformation only if the entry is from a row and column  that appear in a line of <file> as <row name> <tab> <column name> "
    skip: ":   Skip num rows in the file (default: 0)"
    skip_c: ":  Skip num columns (when applying to all columns, can skip the first few) (default: 0)"
    pd: "makes the column a probability distribution by changing negative values to zero and then dividing by the sum of the column."
    precision_take_fix: "Precision (take only <num> sig. digits. default: don't fix)"
    res: "Convert numbers to a <num> resolution (e.g., 0.05)"
    astr: "Add <str> to the end of the column (default: \"\")"
    bstr: "Add <str> to the beginning of the column (default: \"\")"
    set: "Set the entry to <str> (put EMPTY for getting an empty entry)"
    rm_re: "Remove string that matches the regular expression <regexp> from column"
    pv: "Set numerical values around a given pivot (see -pv_val, -pv_high, -pv_low). Activated when <bool> = 1. Non numerical values are not modified."
    pv_val: "<num> The pivot value (default: 0.05)     "
    pv_high: "The number to set values greater then the pivot value (default: 0)"
    pv_low: "<num> The number to set values smaller equal then the pivot value (default: 1)"
    splt_d: "Split the column by the delimiter <del> (default: none)."
    cumul: "Accumulate (row i = row 1 + .. + row i)"
    when_dividing_zero: "When dividing by zero, uses <num> instead of giving an error (default: 999999)"
  }
}