version 1.0

task Gempmemd {
  input {
    String? r
    String? c
    String? p
    String? var_3
    String? i
    Boolean? var_5
    String pm_emd_dot_gem
  }
  command <<<
    gem_pmemd \
      ~{pm_emd_dot_gem} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(var_3) then ("-o " +  '"' + var_3 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (var_5) then "-O" else ""}
  >>>
  parameter_meta {
    r: ""
    c: ""
    p: ""
    var_3: ""
    i: ""
    var_5: ""
    pm_emd_dot_gem: ""
  }
  output {
    File out_stdout = stdout()
  }
}