version 1.0

task Rbox {
  input {
    String? r_box
  }
  command <<<
    rbox \
      ~{if defined(r_box) then ("-rbox- " +  '"' + r_box + '"') else ""}
  >>>
  parameter_meta {
    r_box: "various point distributions.  Default is random in cube."
  }
  output {
    File out_stdout = stdout()
  }
}