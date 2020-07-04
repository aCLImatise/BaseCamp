version 1.0

task CompareMS2 {
  input {
    String? one
    String? two
    String? o
    Int? p
  }
  command <<<
    compareMS2 \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    one: ""
    two: ""
    o: ""
    p: ""
  }
}