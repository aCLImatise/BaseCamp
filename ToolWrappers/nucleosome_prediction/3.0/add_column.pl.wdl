version 1.0

task AddColumnpl {
  input {
    Boolean? add_column_add
    Int? add_column_num
    Int? add_column_counter
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
    File? add_column_specified_file
    Int? sn
  }
  command <<<
    add_column_pl \
      ~{if (add_column_add) then "-b" else ""} \
      ~{if defined(add_column_num) then ("-c " +  '"' + add_column_num + '"') else ""} \
      ~{if defined(add_column_counter) then ("-n " +  '"' + add_column_counter + '"') else ""} \
      ~{if defined(add_column_specified_string) then ("-s " +  '"' + add_column_specified_string + '"') else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (u) then "-u" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (count) then "-count" else ""} \
      ~{if (ave) then "-ave" else ""} \
      ~{if (quant) then "-quant" else ""} \
      ~{if defined(add_column_specified_file) then ("-f " +  '"' + add_column_specified_file + '"') else ""} \
      ~{if defined(sn) then ("-sn " +  '"' + sn + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_column_add: ":                 add the column as the first in the file (default: add at the end)"
    add_column_num: ":           add the column before column number <num>"
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
    quant: "<low,high>   the quantile range of values on which to perform the operation (default: 0,1)\\n!! currently works only with -ave !!\\ne.g., to compute a trimmed mean in quantiles range 0.1 to 0.8 use: -ave c1,..,ck -quant 0.1,0.8"
    add_column_specified_file: ":          add the column from the specified file"
    sn: ":           The significant numbers to print (default: 2)."
  }
  output {
    File out_stdout = stdout()
  }
}