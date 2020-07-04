version 1.0

task PathwayPipeline.py {
  input {
    String? i
    Directory? o
    String? m
  }
  command <<<
    pathway_pipeline.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    m: ""
  }
}