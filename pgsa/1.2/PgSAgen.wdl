version 1.0

task PgSAgen {
  input {
    String? r
    String? k
    Boolean? c
    Boolean? p
    Boolean? v
    String reads_srcfile
    String? pair_srcfile
    String index_prefix
  }
  command <<<
    PgSAgen \
      ~{reads_srcfile} \
      ~{pair_srcfile} \
      ~{index_prefix} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-c" false="" c} \
      ~{true="-p" false="" p} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    r: ""
    k: ""
    c: ""
    p: ""
    v: ""
    reads_srcfile: ""
    pair_srcfile: ""
    index_prefix: ""
  }
}