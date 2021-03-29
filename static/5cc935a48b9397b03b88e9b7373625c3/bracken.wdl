version 1.0

task Bracken {
  input {
    String? t
    String? l
    String? r
    String? w
    String? o
    String? i
    String? d
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
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0"
  }
  parameter_meta {
    t: ""
    l: ""
    r: ""
    w: ""
    o: ""
    i: ""
    d: ""
    my_db: "location of Kraken database"
    kraken_report_file: "Kraken REPORT file to use for abundance estimation"
    file_name_bracken: "file name for Bracken default output"
    out_report: "New Kraken REPORT output file with Bracken read estimates"
    read_len: "read length to get all classifications for (default: 100)"
    level: "level to estimate abundance at [options: D,P,C,O,F,G,S,S1,etc] (default: S)"
    threshold: "number of reads required PRIOR to abundance estimation to perform reestimation (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}