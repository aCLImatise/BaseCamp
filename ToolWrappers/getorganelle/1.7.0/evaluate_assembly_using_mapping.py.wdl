version 1.0

task EvaluateAssemblyUsingMappingpy {
  input {
    String? o
    Int? two
    Int? one
    File? f
  }
  command <<<
    evaluate_assembly_using_mapping_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    two: ""
    one: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
  }
}