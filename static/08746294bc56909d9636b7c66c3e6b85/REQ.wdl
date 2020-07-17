version 1.0

task REQ {
  input {
    Boolean? verbose_mode
    String d_file
    String t_file
    String outfile
  }
  command <<<
    REQ \
      ~{d_file} \
      ~{t_file} \
      ~{outfile} \
      ~{true="-v" false="" verbose_mode}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    d_file: ""
    t_file: ""
    outfile: ""
  }
}