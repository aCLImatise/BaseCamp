version 1.0

task Kcutilmgr {
  input {
    Boolean? ic
    String? alt
    String? key
    Boolean? d
    String cip_h
    String comp
    String conf
    String enc
    String hash
    String hex
    String regex
    String pattern
  }
  command <<<
    kcutilmgr \
      ~{cip_h} \
      ~{comp} \
      ~{conf} \
      ~{enc} \
      ~{hash} \
      ~{hex} \
      ~{regex} \
      ~{pattern} \
      ~{if (ic) then "-ic" else ""} \
      ~{if defined(alt) then ("-alt " +  '"' + alt + '"') else ""} \
      ~{if defined(key) then ("-key " +  '"' + key + '"') else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ic: ""
    alt: ""
    key: ""
    d: ""
    cip_h: ""
    comp: ""
    conf: ""
    enc: ""
    hash: ""
    hex: ""
    regex: ""
    pattern: ""
  }
  output {
    File out_stdout = stdout()
  }
}