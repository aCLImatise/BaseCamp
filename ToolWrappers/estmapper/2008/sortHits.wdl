version 1.0

task SortHits {
  input {
    File? t
    String? m
    Boolean? v
    Int hit_file_two
  }
  command <<<
    sortHits \
      ~{hit_file_two} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    t: ""
    m: ""
    v: ""
    hit_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}