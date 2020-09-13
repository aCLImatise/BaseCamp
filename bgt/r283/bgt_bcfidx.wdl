version 1.0

task BgtBcfidx {
  input {
    Int? s
    String in_dot_bcf
  }
  command <<<
    bgt bcfidx \
      ~{in_dot_bcf} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    in_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}