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
      ~{if (verbose_mode) then "-v" else ""}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    d_file: ""
    t_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}