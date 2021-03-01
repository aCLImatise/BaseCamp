version 1.0

task Gcpppy {
  input {
    String? ref
    String list
    String of
    String genetic
    String codes
  }
  command <<<
    gcpp_py \
      ~{list} \
      ~{of} \
      ~{genetic} \
      ~{codes} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "reference genetic code"
    list: ""
    of: ""
    genetic: ""
    codes: ""
  }
  output {
    File out_stdout = stdout()
  }
}