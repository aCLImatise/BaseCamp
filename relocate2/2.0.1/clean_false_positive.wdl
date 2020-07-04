version 1.0

task CleanFalsePositive.py {
  input {
    String? i
    String? r
    String? d
  }
  command <<<
    clean_false_positive.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    r: ""
    d: ""
  }
}