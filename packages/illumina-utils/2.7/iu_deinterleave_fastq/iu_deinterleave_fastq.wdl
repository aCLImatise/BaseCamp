version 1.0

task Iudeinterleavefastq {
  input {
    Int? two
    Int? one
    String fast_q
    String var_input
  }
  command <<<
    iu_deinterleave_fastq \
      ~{fast_q} \
      ~{var_input} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  parameter_meta {
    two: ""
    one: ""
    fast_q: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}