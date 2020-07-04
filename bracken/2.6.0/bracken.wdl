version 1.0

task Bracken {
  input {
    String? d
    String? i
    String? o
    String? w
    String? r
    String? l
    String? t
    String my_db
    String kraken_report_file
    String file_name_bracken
    String out_report
    String read_len
    String level
    String threshold
  }
  command <<<
    bracken \
      ~{my_db} \
      ~{kraken_report_file} \
      ~{file_name_bracken} \
      ~{out_report} \
      ~{read_len} \
      ~{level} \
      ~{threshold} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    i: ""
    o: ""
    w: ""
    r: ""
    l: ""
    t: ""
    my_db: "location of Kraken database"
    kraken_report_file: "Kraken REPORT file to use for abundance estimation"
    file_name_bracken: "file name for Bracken default output"
    out_report: "New Kraken REPORT output file with Bracken read estimates"
    read_len: "read length to get all classifications for (default: 100)"
    level: "level to estimate abundance at [options: D,P,C,O,F,G,S] (default: S)"
    threshold: "number of reads required PRIOR to abundance estimation to perform reestimation (default: 0)"
  }
}