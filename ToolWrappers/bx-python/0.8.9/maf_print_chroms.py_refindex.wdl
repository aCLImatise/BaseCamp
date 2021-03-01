version 1.0

task MafPrintChromspyRefindex {
  input {
    String program_dot
  }
  command <<<
    maf_print_chroms_py refindex \
      ~{program_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program_dot: "usage: /usr/local/bin/maf_print_chroms.py refindex [options]"
  }
  output {
    File out_stdout = stdout()
  }
}