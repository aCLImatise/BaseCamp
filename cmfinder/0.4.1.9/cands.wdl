version 1.0

task Cands {
  input {
    String? n
    String? f
    String? r
    String? m
    File? l
    String? t
    String? that
    String? will
    String? contain
    String? list
    String? of
    String? c_and
    File? files
    String? created
    String seq_file
    String can_d_file
  }
  command <<<
    cands \
      ~{that} \
      ~{will} \
      ~{contain} \
      ~{list} \
      ~{of} \
      ~{c_and} \
      ~{files} \
      ~{created} \
      ~{seq_file} \
      ~{can_d_file} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    f: ""
    r: ""
    m: ""
    l: ""
    t: ""
    that: ""
    will: ""
    contain: ""
    list: ""
    of: ""
    c_and: ""
    files: ""
    created: ""
    seq_file: ""
    can_d_file: ""
  }
}