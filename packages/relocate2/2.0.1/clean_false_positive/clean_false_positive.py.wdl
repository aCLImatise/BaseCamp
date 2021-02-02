version 1.0

task CleanFalsePositivepy {
  input {
    String? d
    String? r
    String? i
  }
  command <<<
    clean_false_positive_py \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    r: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}