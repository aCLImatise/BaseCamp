version 1.0

task PretextMapavx2 {
  input {
    Boolean? sort_order
    String? filter_include
    Boolean? filter_exclude
  }
  command <<<
    PretextMap_avx2 \
      ~{if (sort_order) then "--sortorder" else ""} \
      ~{if defined(filter_include) then ("--filterInclude " +  '"' + filter_include + '"') else ""} \
      ~{if (filter_exclude) then "--filterExclude" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_order: "({descend}, ascend)"
    filter_include: "\\\"seq_ [, seq_]*\\\""
    filter_exclude: "\\\"seq_ [, seq_]*\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}