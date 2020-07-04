version 1.0

task DAM2fasta {
  input {
    Boolean? use_upper_case
    Boolean? print_w_bp
    Boolean? vu
  }
  command <<<
    DAM2fasta \
      ~{true="-U" false="" use_upper_case} \
      ~{true="-w" false="" print_w_bp} \
      ~{true="-vU" false="" vu}
  >>>
  parameter_meta {
    use_upper_case: ": Use upper case for DNA (default is lower case)."
    print_w_bp: ": Print -w bp per line (default is 80)."
    vu: ""
  }
}