version 1.0

task Getgffinfo {
  input {
    Boolean? cite
  }
  command <<<
    get_gff_info \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}