version 1.0

task Mhpl8rUniteDad {
  input {
    Int? s
    File? o
    Int mhp_leigh_tr
    String unite
    String mom
    String dad
  }
  command <<<
    mhpl8r unite dad \
      ~{mhp_leigh_tr} \
      ~{unite} \
      ~{mom} \
      ~{dad} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    o: ""
    mhp_leigh_tr: ""
    unite: ""
    mom: ""
    dad: ""
  }
  output {
    File out_stdout = stdout()
  }
}