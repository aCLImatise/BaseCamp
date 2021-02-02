version 1.0

task DAM2fasta {
  input {
    Boolean? use_upper_case
    Boolean? print_w_bp
    Boolean? vu
  }
  command <<<
    DAM2fasta \
      ~{if (use_upper_case) then "-U" else ""} \
      ~{if (print_w_bp) then "-w" else ""} \
      ~{if (vu) then "-vU" else ""}
  >>>
  parameter_meta {
    use_upper_case: ": Use upper case for DNA (default is lower case)."
    print_w_bp: ": Print -w bp per line (default is 80)."
    vu: ""
  }
  output {
    File out_stdout = stdout()
  }
}