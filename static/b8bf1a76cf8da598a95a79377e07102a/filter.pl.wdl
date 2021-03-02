version 1.0

task Filterpl {
  input {
    Int? column_filter_applied
    Int? number_columns_are
    Int? min
    Int? mins
    Int? min_l
    Int? max
    Int? maxs
    Int? max_l
    Int? abs
    Int? babs
    String? str
    String? est_r
    Int? est_r_list
    String? nstr
    Boolean? ne
    Boolean? e
    Int? min_pass
    Int? rel_min_pass
    Boolean? numeric
    Boolean? pass_from
    Int? use_column_num
    Boolean? print_num
    Int? sk
    Int? skip
    Boolean? quite_mode_default
  }
  command <<<
    filter_pl \
      ~{if defined(column_filter_applied) then ("-c " +  '"' + column_filter_applied + '"') else ""} \
      ~{if defined(number_columns_are) then ("-h " +  '"' + number_columns_are + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(mins) then ("-mins " +  '"' + mins + '"') else ""} \
      ~{if defined(min_l) then ("-minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(maxs) then ("-maxs " +  '"' + maxs + '"') else ""} \
      ~{if defined(max_l) then ("-maxl " +  '"' + max_l + '"') else ""} \
      ~{if defined(abs) then ("-abs " +  '"' + abs + '"') else ""} \
      ~{if defined(babs) then ("-babs " +  '"' + babs + '"') else ""} \
      ~{if defined(str) then ("-str " +  '"' + str + '"') else ""} \
      ~{if defined(est_r) then ("-estr " +  '"' + est_r + '"') else ""} \
      ~{if defined(est_r_list) then ("-estr_list " +  '"' + est_r_list + '"') else ""} \
      ~{if defined(nstr) then ("-nstr " +  '"' + nstr + '"') else ""} \
      ~{if (ne) then "-ne" else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if defined(min_pass) then ("-min_pass " +  '"' + min_pass + '"') else ""} \
      ~{if defined(rel_min_pass) then ("-rel_min_pass " +  '"' + rel_min_pass + '"') else ""} \
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (pass_from) then "-pass_from" else ""} \
      ~{if defined(use_column_num) then ("-u " +  '"' + use_column_num + '"') else ""} \
      ~{if (print_num) then "-print_num" else ""} \
      ~{if defined(sk) then ("-sk " +  '"' + sk + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if (quite_mode_default) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    column_filter_applied: ":           The column to which the filter is applied (if not specified,\\nthen if either column passes, the row passes."
    number_columns_are: ":           Number of columns that are headers (default: 1)"
    min: ":         Filter passes if the number is above or equal to <num>"
    mins: ":        Filter passes if the number is strictly above <num>"
    min_l: ":        Filter passes if the number of characters of the column is >= <num>"
    max: ":         Filter passes if the number is below or equal to <num>"
    maxs: ":        Filter passes if the number is strictly below <num>"
    max_l: ":        Filter passes if the number of characters of the column is <= <num>"
    abs: ":         Filter passes if the number is above <num> or below -<num>"
    babs: ":        Filter passes if the number is above -<num> and below <num>"
    str: ":         Filter passes if the column contains <str>"
    est_r: ":        Filter passes if the column is equal to <str>"
    est_r_list: ":   Filter passes if the column is equal to one of the values in <str1;str2;...>"
    nstr: ":        Filter passes if the column is *not* equal to <str>"
    ne: ":                Filter passes if string is not empty"
    e: ":                 Filter passes if string is empty"
    min_pass: ":    Filter passes if at least num columns pass the filter (default: 1)"
    rel_min_pass: ":Filter passes if at least int(num*rowlength) columns pass the filter"
    numeric: ":           Filter passes if string is numeric"
    pass_from: ":         Print all rows from the point that one row passed the filter"
    use_column_num: ":           Use column <num> as the value for the the specified filters (e.g.\\nfor the parameters \\\" -c 1 -u 0 -mins \\\" rows whose value in the second\\ncolumn is greater than the value in the first column will pass)"
    print_num: ":         Prints the number of columns that passed the filter"
    sk: ":          Print first num rows without filtering"
    skip: ":        Print first num rows without filtering"
    quite_mode_default: ":                 Quite mode (default is verbose)"
  }
  output {
    File out_stdout = stdout()
  }
}