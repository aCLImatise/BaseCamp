version 1.0

task EslsfetchNamefile {
  input {
    File? index
    File? f
    String esl_s_fetch
    String sq_file
    String name
  }
  command <<<
    esl_sfetch namefile \
      ~{esl_s_fetch} \
      ~{sq_file} \
      ~{name} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    f: ""
    esl_s_fetch: ""
    sq_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}