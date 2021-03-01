version 1.0

task MimoddRebase {
  input {
    Boolean? v
    String? f
    Boolean? r
    String? o
    String rebase
    String input_file
    String chain_file
  }
  command <<<
    mimodd rebase \
      ~{rebase} \
      ~{input_file} \
      ~{chain_file} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
    f: ""
    r: ""
    o: ""
    rebase: ""
    input_file: ""
    chain_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}