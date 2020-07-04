version 1.0

task PickBestPair {
  input {
    String? one
    String? two
    String? o
  }
  command <<<
    pickBestPair \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    one: ""
    two: ""
    o: ""
  }
}