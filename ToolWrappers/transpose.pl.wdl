version 1.0

task Transposepl {
  input {
    String? set_delimiter_columns
  }
  command <<<
    transpose_pl \
      ~{if defined(set_delimiter_columns) then ("-d " +  '"' + set_delimiter_columns + '"') else ""}
  >>>
  parameter_meta {
    set_delimiter_columns: ": set the delimiter for the columns to DELIM (default is\\ntab).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}