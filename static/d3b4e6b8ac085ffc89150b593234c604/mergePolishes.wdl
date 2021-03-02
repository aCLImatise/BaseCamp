version 1.0

task MergePolishes {
  input {
    Boolean? m
    String? o
    String cdna
    Int cdna_one
    Int cdna_two
  }
  command <<<
    mergePolishes \
      ~{cdna} \
      ~{cdna_one} \
      ~{cdna_two} \
      ~{if (m) then "-m" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: ""
    o: ""
    cdna: ""
    cdna_one: ""
    cdna_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}