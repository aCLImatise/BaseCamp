version 1.0

task Pod2usage {
  input {
    Boolean? man
    String? exit
    File? output_file_print
    Int? verbose
    File? path_list
    String? formatter
    Boolean? utf_eight
    File pathname_file_containing
  }
  command <<<
    pod2usage \
      ~{pathname_file_containing} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(exit) then ("-exit " +  '"' + exit + '"') else ""} \
      ~{if defined(output_file_print) then ("-output " +  '"' + output_file_print + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(path_list) then ("-pathlist " +  '"' + path_list + '"') else ""} \
      ~{if defined(formatter) then ("-formatter " +  '"' + formatter + '"') else ""} \
      ~{if (utf_eight) then "-utf8" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "Print this command's manual page and exit."
    exit: "The exit status value to return."
    output_file_print: "The output file to print to. If the special names \\\"-\\\" or \\\">&1\\\"\\nor \\\">&STDOUT\\\" are used then standard output is used. If \\\">&2\\\" or\\n\\\">&STDERR\\\" is used then standard error is used."
    verbose: "The desired level of verbosity to use:\\n1 : print SYNOPSIS only\\n2 : print SYNOPSIS sections and any OPTIONS/ARGUMENTS sections\\n3 : print the entire manpage (similar to running pod2text)"
    path_list: "Specifies one or more directories to search for the input file\\nif it was not supplied with an absolute path. Each directory\\npath in the given list should be separated by a ':' on Unix (';'\\non MSWin32 and DOS)."
    formatter: "Which text formatter to use. Default is Pod::Text, or for very\\nold Perl versions Pod::PlainText. An alternative would be e.g.\\nPod::Text::Termcap."
    utf_eight: "This option assumes that the formatter (see above) understands\\nthe option \\\"utf8\\\". It turns on generation of utf8 output."
    pathname_file_containing: "The pathname of a file containing pod documentation to be output\\nin usage message format (defaults to standard input).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_print = "${in_output_file_print}"
  }
}