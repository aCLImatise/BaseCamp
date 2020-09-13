version 1.0

task GenomeCoverageBedpl {
  input {
    Int? exist_usrlocalbingenomecoveragebedpl_line
  }
  command <<<
    genomeCoverageBed_pl \
      ~{if defined(exist_usrlocalbingenomecoveragebedpl_line) then ("-h " +  '"' + exist_usrlocalbingenomecoveragebedpl_line + '"') else ""}
  >>>
  parameter_meta {
    exist_usrlocalbingenomecoveragebedpl_line: "not exist at /usr/local/bin/genomeCoverageBed.pl line 10."
  }
  output {
    File out_stdout = stdout()
  }
}