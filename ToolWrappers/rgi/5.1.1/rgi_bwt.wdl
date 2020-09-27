version 1.0

task RgiBwt {
  input {
    String? a
    Int? two
    Int? one
  }
  command <<<
    rgi bwt \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}