version 1.0

task Fumalisttobooleanlist {
  input {
    String? f
    String? t
  }
  command <<<
    fuma_list_to_boolean_list \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}