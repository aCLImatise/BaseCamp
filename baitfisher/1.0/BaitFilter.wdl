version 1.0

task BaitFilter {
  input {
    String? i
    String? o
    String? c
    String? m
    String bait_filter
  }
  command <<<
    BaitFilter \
      ~{bait_filter} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    c: ""
    m: ""
    bait_filter: "-i <string> [-o <string>] [-c <string>] [-m <string>] [--blast-second-hit-evalue <floating point number>] [--blast-first-hit-evalue <floating point number>] [--blast-min-hit-coverage-of-baits-in-tiling-stack <floating point number>] [--ref-blast-db <string>] [--blast-extra-commandline <string>] [--blast-evalue-cutoff <floating point number>] [-B <string>] [-t <positive integer>] [--ID-prefix <string>] [--verbosity <unsigned integer>] [-S] [--] [--version] [-h]"
  }
}