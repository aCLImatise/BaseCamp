version 1.0

task DB2fasta {
  input {
    Boolean? use_upper_case
    Boolean? print_bp_line
    Boolean? vu
  }
  command <<<
    DB2fasta \
      ~{if (use_upper_case) then "-U" else ""} \
      ~{if (print_bp_line) then "-w" else ""} \
      ~{if (vu) then "-vU" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_upper_case: ": Use upper case for DNA (default is lower case)."
    print_bp_line: ": Print -w bp per line (default is 80)."
    vu: ""
  }
  output {
    File out_stdout = stdout()
  }
}