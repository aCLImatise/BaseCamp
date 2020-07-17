version 1.0

task Pindel {
  input {
    String? f
    String? p
  }
  command <<<
    pindel \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    p: ""
  }
}