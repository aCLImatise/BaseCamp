version 1.0

task Copylink {
  input {
    Int? linkat_usrlocalbincopylink_line
  }
  command <<<
    copylink \
      ~{if defined(linkat_usrlocalbincopylink_line) then ("-h " +  '"' + linkat_usrlocalbincopylink_line + '"') else ""}
  >>>
  parameter_meta {
    linkat_usrlocalbincopylink_line: "a link\\nat /usr/local/bin/copylink line 9.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}