version 1.0

task MafFilterpy {
  input {
    String? component_count
    Int? min_cols
    String? expr
  }
  command <<<
    maf_filter_py \
      ~{if defined(component_count) then ("--component_count " +  '"' + component_count + '"') else ""} \
      ~{if defined(min_cols) then ("--min_cols " +  '"' + min_cols + '"') else ""} \
      ~{if defined(expr) then ("--expr " +  '"' + expr + '"') else ""}
  >>>
  parameter_meta {
    component_count: ""
    min_cols: ""
    expr: ""
  }
  output {
    File out_stdout = stdout()
  }
}