version 1.0

task Gcpp.py {
  input {
    String? ref
    String list
    String of
    String genetic
    String codes
  }
  command <<<
    gcpp.py \
      ~{list} \
      ~{of} \
      ~{genetic} \
      ~{codes} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    ref: "reference genetic code"
    list: ""
    of: ""
    genetic: ""
    codes: ""
  }
}