version 1.0

task Cands {
  input {
    File? t
    File? l
    File? m
    File? r
    String? f
    String? n
    String? that
    String? will
    String? contain
    String? list
    String? of
    String? c_and
    String? files
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
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    l: ""
    m: ""
    r: ""
    f: ""
    n: ""
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
  output {
    File out_stdout = stdout()
  }
}