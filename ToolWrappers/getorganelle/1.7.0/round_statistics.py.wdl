version 1.0

task RoundStatisticspy {
  input {
    String? o
    String? i
    Directory? d
    File? f
  }
  command <<<
    round_statistics_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    d: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_d = "${in_d}"
  }
}