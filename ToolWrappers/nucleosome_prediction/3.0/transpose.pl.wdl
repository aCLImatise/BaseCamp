version 1.0

task Transposepl {
  input {
    String? set_delimiter_istab
  }
  command <<<
    transpose_pl \
      ~{if defined(set_delimiter_istab) then ("-d " +  '"' + set_delimiter_istab + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_delimiter_istab: ": set the delimiter for the columns to DELIM (default is\\ntab).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}