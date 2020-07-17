version 1.0

task IuDeinterleaveFastq {
  input {
    String? one
    String? two
    String var_2
    String var_3
    String var_input
  }
  command <<<
    iu-deinterleave-fastq \
      ~{var_2} \
      ~{var_3} \
      ~{var_input} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""}
  >>>
  parameter_meta {
    one: ""
    two: ""
    var_2: ""
    var_3: ""
    var_input: ""
  }
}