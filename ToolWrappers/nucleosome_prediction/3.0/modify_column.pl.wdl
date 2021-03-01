version 1.0

task ModifyColumnpl {
  input {
    Int? column_modify_default
    Int? rows_modify_default
    Boolean? apply_transformation_columns
    Int? min
    Int? max
    Int? mins
    Int? maxs
    Boolean? rng
    Boolean? rngs
    Int? abs
    Int? babs
    String? str
    String? est_r
    String? nstr
    Boolean? ne
    Boolean? empty
    File? pairs
    Int? skip
    Int? skip_c
    Int? add_num_column
    Int? substract_num_column
    Int? multiply_column_num
    Int? divide_column_num
    Boolean? in_v
    Boolean? ab
    Boolean? neg_two_pos
    Boolean? log
    Boolean? log_two
    Boolean? log_one_zero
    Int? exp
    Boolean? take_e_value
    Int? pow
    Int? substr
    Int? set_min
    Int? set_max
    Int? type
    Boolean? len
    Boolean? reverse
    Int? dc
    Int? mc
    Int? ac
    Int? sc
    Int? minc
    Int? max_c
    Int? bins
    String? rescale
    Int? rescale_limits
    Boolean? pd
    Int? precision_take_default
    Int? res
    String? astr
    String? bstr
    String? set
    String? rm_re
    Boolean? pv
    Boolean? pv_val
    Int? pv_high
    Boolean? pv_low
    String? splt_d
    Boolean? cumul
    Int? when_dividing_zero
  }
  command <<<
    modify_column_pl \
      ~{if defined(column_modify_default) then ("-c " +  '"' + column_modify_default + '"') else ""} \
      ~{if defined(rows_modify_default) then ("-r " +  '"' + rows_modify_default + '"') else ""} \
      ~{if (apply_transformation_columns) then "-A" else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(mins) then ("-mins " +  '"' + mins + '"') else ""} \
      ~{if defined(maxs) then ("-maxs " +  '"' + maxs + '"') else ""} \
      ~{if (rng) then "-rng" else ""} \
      ~{if (rngs) then "-rngs" else ""} \
      ~{if defined(abs) then ("-abs " +  '"' + abs + '"') else ""} \
      ~{if defined(babs) then ("-babs " +  '"' + babs + '"') else ""} \
      ~{if defined(str) then ("-str " +  '"' + str + '"') else ""} \
      ~{if defined(est_r) then ("-estr " +  '"' + est_r + '"') else ""} \
      ~{if defined(nstr) then ("-nstr " +  '"' + nstr + '"') else ""} \
      ~{if (ne) then "-ne" else ""} \
      ~{if (empty) then "-empty" else ""} \
      ~{if defined(pairs) then ("-pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(skip_c) then ("-skipc " +  '"' + skip_c + '"') else ""} \
      ~{if defined(add_num_column) then ("-a " +  '"' + add_num_column + '"') else ""} \
      ~{if defined(substract_num_column) then ("-s " +  '"' + substract_num_column + '"') else ""} \
      ~{if defined(multiply_column_num) then ("-m " +  '"' + multiply_column_num + '"') else ""} \
      ~{if defined(divide_column_num) then ("-d " +  '"' + divide_column_num + '"') else ""} \
      ~{if (in_v) then "-inv" else ""} \
      ~{if (ab) then "-ab" else ""} \
      ~{if (neg_two_pos) then "-neg2pos" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (log_two) then "-log2" else ""} \
      ~{if (log_one_zero) then "-log10" else ""} \
      ~{if defined(exp) then ("-exp " +  '"' + exp + '"') else ""} \
      ~{if (take_e_value) then "-e" else ""} \
      ~{if defined(pow) then ("-pow " +  '"' + pow + '"') else ""} \
      ~{if defined(substr) then ("-substr " +  '"' + substr + '"') else ""} \
      ~{if defined(set_min) then ("-set_min " +  '"' + set_min + '"') else ""} \
      ~{if defined(set_max) then ("-set_max " +  '"' + set_max + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(dc) then ("-dc " +  '"' + dc + '"') else ""} \
      ~{if defined(mc) then ("-mc " +  '"' + mc + '"') else ""} \
      ~{if defined(ac) then ("-ac " +  '"' + ac + '"') else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if defined(minc) then ("-minc " +  '"' + minc + '"') else ""} \
      ~{if defined(max_c) then ("-maxc " +  '"' + max_c + '"') else ""} \
      ~{if defined(bins) then ("-bins " +  '"' + bins + '"') else ""} \
      ~{if defined(rescale) then ("-rescale " +  '"' + rescale + '"') else ""} \
      ~{if defined(rescale_limits) then ("-rescale_limits " +  '"' + rescale_limits + '"') else ""} \
      ~{if (pd) then "-pd" else ""} \
      ~{if defined(precision_take_default) then ("-p " +  '"' + precision_take_default + '"') else ""} \
      ~{if defined(res) then ("-res " +  '"' + res + '"') else ""} \
      ~{if defined(astr) then ("-astr " +  '"' + astr + '"') else ""} \
      ~{if defined(bstr) then ("-bstr " +  '"' + bstr + '"') else ""} \
      ~{if defined(set) then ("-set " +  '"' + set + '"') else ""} \
      ~{if defined(rm_re) then ("-rmre " +  '"' + rm_re + '"') else ""} \
      ~{if defined(pv) then ("-pv " +  '"' + pv + '"') else ""} \
      ~{if (pv_val) then "-pv_val" else ""} \
      ~{if defined(pv_high) then ("-pv_high " +  '"' + pv_high + '"') else ""} \
      ~{if (pv_low) then "-pv_low" else ""} \
      ~{if defined(splt_d) then ("-splt_d " +  '"' + splt_d + '"') else ""} \
      ~{if (cumul) then "-cumul" else ""} \
      ~{if defined(when_dividing_zero) then ("-zero " +  '"' + when_dividing_zero + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    pairs: ": Apply transformation only if the entry is from a row and column\\nthat appear in a line of <file> as <row name> <tab> <column name>"
    skip: ":   Skip num rows in the file (default: 0)"
    skip_c: ":  Skip num columns (when applying to all columns, can skip the first few) (default: 0)"
    add_num_column: "Add <num> to the column (default: 0)"
    substract_num_column: "Substract <num> to the column (default: 0)"
    multiply_column_num: "Multiply column by <num> (default: 1) (write '\\\"-1\\\"' to pass negative numbers)"
    divide_column_num: "Divide column by <num> (default: 1) (write '\\\"-1\\\"' to pass negative numbers)"
    in_v: "Inverse of column"
    ab: "Absolute value of column"
    neg_two_pos: "Convert negative numbers to positive"
    log: "Take log (natural base) of the column"
    log_two: "Take log (base 2) of the column"
    log_one_zero: "Take log (base 10) of the column"
    exp: "Take num ** (value of the column)"
    take_e_value: "Take e=2.1782... ** (value of column)"
    pow: "Raise vaule to the power of num (value of the column)"
    substr: "If the column has more than num chars, then substr the first num"
    set_min: "If the column has a value less than num, set it to num"
    set_max: "If the column has a value greater than num, set it to num"
    type: ":   <Number/String> (default: Number)"
    len: "Replace value (treated as a string) by its length in characters"
    reverse: "Reverse the string (ABC becomes CBA)"
    dc: "Divide the column by the number in column <col>"
    mc: "Multiply the column by the number in column <col>"
    ac: "Add the number in column <col> to the column"
    sc: "Subtract the number in column <col> from the column"
    minc: "Take the min of the column and <col>"
    max_c: "Take the max of the column and <col>"
    bins: ":   discretize the column into <num> bins."
    rescale: "given as 'bottom,top'. linearly rescales the data in the column so that the smallest value will\\nbe <bottom> and the largest will be <top>. If the data is equal in all entries, all entries\\nwill be set to <bottom>."
    rescale_limits: ": given as 'min,max'. when used with -rescale assumes that the maximal value of the column is\\nmax and the minimal value is min."
    pd: "makes the column a probability distribution by changing negative values to zero and\\nthen dividing by the sum of the column."
    precision_take_default: "Precision (take only <num> sig. digits. default: don't fix)"
    res: "Convert numbers to a <num> resolution (e.g., 0.05)"
    astr: "Add <str> to the end of the column (default: \\\"\\\")"
    bstr: "Add <str> to the beginning of the column (default: \\\"\\\")"
    set: "Set the entry to <str> (put EMPTY for getting an empty entry)"
    rm_re: "Remove string that matches the regular expression <regexp> from column"
    pv: "Set numerical values around a given pivot (see -pv_val, -pv_high, -pv_low). Activated when <bool> = 1.\\nNon numerical values are not modified."
    pv_val: "<num> The pivot value (default: 0.05)"
    pv_high: "The number to set values greater then the pivot value (default: 0)"
    pv_low: "<num> The number to set values smaller equal then the pivot value (default: 1)"
    splt_d: "Split the column by the delimiter <del> (default: none)."
    cumul: "Accumulate (row i = row 1 + .. + row i)"
    when_dividing_zero: "When dividing by zero, uses <num> instead of giving an error (default: 999999)"
  }
  output {
    File out_stdout = stdout()
  }
}