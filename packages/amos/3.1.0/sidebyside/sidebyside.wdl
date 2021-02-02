version 1.0

task Sidebyside {
  input {
    File? width
    String? same
    String? dif
  }
  command <<<
    sidebyside \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""} \
      ~{if defined(same) then ("-same " +  '"' + same + '"') else ""} \
      ~{if defined(dif) then ("-dif " +  '"' + dif + '"') else ""}
  >>>
  parameter_meta {
    width: ": line width for each file (default: 50)"
    same: ": marker for lines that are the same (default: ==)"
    dif: ": marker for lines that are different (default: !!)"
  }
  output {
    File out_stdout = stdout()
  }
}