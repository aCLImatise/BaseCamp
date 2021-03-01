version 1.0

task Copylink {
  input {
    Int? a_usrlocalbincopylink_line
  }
  command <<<
    copylink \
      ~{if defined(a_usrlocalbincopylink_line) then ("-h " +  '"' + a_usrlocalbincopylink_line + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_usrlocalbincopylink_line: "a link\\nat /usr/local/bin/copylink line 9.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}