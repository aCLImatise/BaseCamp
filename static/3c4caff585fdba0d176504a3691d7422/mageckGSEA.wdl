version 1.0

task MageckGSEA {
  input {
    Boolean? e
    Boolean? s
    String? c
    String? p
    Boolean? n
    String? o
    String? r
    Boolean? g
    String mage_ckg_sea
  }
  command <<<
    mageckGSEA \
      ~{mage_ckg_sea} \
      ~{true="-e" false="" e} \
      ~{true="-s" false="" s} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-n" false="" n} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{true="-g" false="" g}
  >>>
  parameter_meta {
    e: ""
    s: ""
    c: ""
    p: ""
    n: ""
    o: ""
    r: ""
    g: ""
    mage_ckg_sea: "[-e] [-s] [-c <score_column>] [-p <perm_time>] [-n <pathway_name>] [-o <output_file>] -r <rank_file> -g <gmt_file> [--] [--version] [-h]"
  }
}