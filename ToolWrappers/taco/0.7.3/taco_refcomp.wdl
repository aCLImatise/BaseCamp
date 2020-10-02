version 1.0

task TacoRefcomp {
  input {
    Boolean? cp_at
    Int? p
    String? o
    Boolean? v
  }
  command <<<
    taco_refcomp \
      ~{if (cp_at) then "--cpat" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    cp_at: "Run CPAT tool to for coding potential scoring. (CPAT"
    p: ""
    o: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}