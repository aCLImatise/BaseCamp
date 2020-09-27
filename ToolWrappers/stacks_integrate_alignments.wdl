version 1.0

task Stacksintegratealignments {
  input {
    File? b
    String? p
  }
  command <<<
    stacks_integrate_alignments \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    p: ""
  }
  output {
    File out_stdout = stdout()
  }
}