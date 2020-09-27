version 1.0

task MimoddVarextract {
  input {
    Boolean? keep_alts
    String? o
    Boolean? v
    Array[String] p
    String var_extract
  }
  command <<<
    mimodd varextract \
      ~{var_extract} \
      ~{if (keep_alts) then "--keep-alts" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    keep_alts: "keep all alternate allele candidates even if they do"
    o: ""
    v: ""
    p: ""
    var_extract: ""
  }
  output {
    File out_stdout = stdout()
  }
}