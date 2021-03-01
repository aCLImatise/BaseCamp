version 1.0

task FileMergerpy {
  input {
    String? o
    String? f
    Array[String] i
  }
  command <<<
    fileMerger_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    f: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}