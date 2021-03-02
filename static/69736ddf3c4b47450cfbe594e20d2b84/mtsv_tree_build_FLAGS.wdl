version 1.0

task MtsvtreebuildFLAGS {
  input {
    String? index
  }
  command <<<
    mtsv_tree_build FLAGS \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}