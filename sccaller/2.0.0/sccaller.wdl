version 1.0

task Sccaller {
  input {
    String? d
    String? l
    String? bias
    String? min_var
    String? mapq
    String? min_depth
    String? rd
    String? null
    String? bulk
    String? bulk_min_depth
    String? bulk_min_mapq
    String? bulk_min_var
    String? format
    String? head
    String? tail
    String? e
    String? cpu_num
    String? w
    String? n
    String? t
    String? b
    String? f
    String? s
    String? o
  }
  command <<<
    sccaller \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(bias) then ("--bias " +  '"' + bias + '"') else ""} \
      ~{if defined(min_var) then ("--minvar " +  '"' + min_var + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(rd) then ("--RD " +  '"' + rd + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(bulk) then ("--bulk " +  '"' + bulk + '"') else ""} \
      ~{if defined(bulk_min_depth) then ("--bulk_min_depth " +  '"' + bulk_min_depth + '"') else ""} \
      ~{if defined(bulk_min_mapq) then ("--bulk_min_mapq " +  '"' + bulk_min_mapq + '"') else ""} \
      ~{if defined(bulk_min_var) then ("--bulk_min_var " +  '"' + bulk_min_var + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""} \
      ~{if defined(tail) then ("--tail " +  '"' + tail + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(cpu_num) then ("--cpu_num " +  '"' + cpu_num + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    l: ""
    bias: ""
    min_var: ""
    mapq: ""
    min_depth: ""
    rd: ""
    null: ""
    bulk: ""
    bulk_min_depth: ""
    bulk_min_mapq: ""
    bulk_min_var: ""
    format: ""
    head: ""
    tail: ""
    e: ""
    cpu_num: ""
    w: ""
    n: ""
    t: ""
    b: ""
    f: ""
    s: ""
    o: ""
  }
}