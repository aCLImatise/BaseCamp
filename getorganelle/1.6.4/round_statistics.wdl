version 1.0

task RoundStatistics.py {
  input {
    String? debug
    String? f
    String? d
    String? i
    String? o
  }
  command <<<
    round_statistics.py \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    debug: "Debug mode."
    f: ""
    d: ""
    i: ""
    o: ""
  }
}