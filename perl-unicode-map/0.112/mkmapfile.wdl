version 1.0

task Mkmapfile {
  input {
    String? m
    String? u
  }
  command <<<
    mkmapfile \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if defined(u) then ("-U " +  '"' + u + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    u: ""
  }
}