version 1.0

task RankMotifs {
  input {
    String? version
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    RankMotifs \
      ~{an_k} \
      ~{bank_name} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version: ""
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}