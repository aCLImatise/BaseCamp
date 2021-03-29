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
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    program_dot: "usage: /usr/local/bin/maf_print_chroms.py refindex [options]"
  }
  output {
    File out_stdout = stdout()
  }
}