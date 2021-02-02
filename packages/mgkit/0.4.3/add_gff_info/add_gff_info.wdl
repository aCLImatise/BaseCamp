version 1.0

task Addgffinfo {
  input {
    Boolean? cite
  }
  command <<<
    add_gff_info \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}