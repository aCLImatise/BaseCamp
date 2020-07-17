version 1.0

task AddColumn.pl {
  input {
    Boolean? add_column_add
    String? add_column_column
    String? add_column_counter
    String? add_column_specified_string
    Boolean? d
    Boolean? u
    Boolean? m
    Boolean? a
    Boolean? min
    Boolean? max
    Boolean? count
    Boolean? ave
    Boolean? quant
    String? add_column_specified_file
    Int? sn
  }
  command <<<
    add_column.pl \
      ~{true="-b" false="" add_column_add} \
      ~{if defined(add_column_column) then ("-c " +  '"' + add_column_column + '"') else ""} \
      ~{if defined(add_column_counter) then ("-n " +  '"' + add_column_counter + '"') else ""} \
      ~{if defined(add_column_specified_string) then ("-s " +  '"' + add_column_specified_string + '"') else ""} \
      ~{true="-d" false="" d} \
      ~{true="-u" false="" u} \
      ~{true="-m" false="" m} \
      ~{true="-a" false="" a} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max} \
      ~{true="-count" false="" count} \
      ~{true="-ave" false="" ave} \
      ~{true="-quant" false="" quant} \
      ~{if defined(add_column_specified_file) then ("-f " +  '"' + add_column_specified_file + '"') else ""} \
      ~{if defined(sn) then ("-sn " +  '"' + sn + '"') else ""}
  >>>
  parameter_meta {
    add_column_add: ":                 add the column as the first in the file (default: add at the end)"
    add_column_column: ":           add the column before column number <num>"
    add_column_counter: "add a column counter, starting at num."
    add_column_specified_string: "add a column with the specified string"
    d: "<c1,c2>          add a column which is the value of column1 / column2"
    u: "<c1,c2>          add a column which is the value of column1 - column2"
    m: "<c1,c2,..,ck>    add a column which is the value of column1 * column2 *..* columnk"
    a: "<c1,c2,..,ck>    add a column which is the value of column1 + column2 +..+ columnk"
    min: "<c1,c2,..,ck>  add a column which is the value of min(column1,column2,..,columnk)"
    max: "<c1,c2,..,ck>  add a column which is the value of max(column1,column2,..,columnk)"
    count: "<c1,c2,..,ck>add a column which is the count of non empty entries over column1,column2,..,columnk."
    ave: "<c1,c2,..,ck>  add a column which is the value of average(column1,column2,..,columnk) !!"
    quant: "<low,high>   the quantile range of values on which to perform the operation (default: 0,1) !! currently works only with -ave !! e.g., to compute a trimmed mean in quantiles range 0.1 to 0.8 use: -ave c1,..,ck -quant 0.1,0.8"
    add_column_specified_file: ":          add the column from the specified file"
    sn: ":           The significant numbers to print (default: 2)."
  }
}