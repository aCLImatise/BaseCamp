version 1.0

task EslsfetchSqfile {
  input {
    File? index
    File? f
    String esl_s_fetch
    String name
    String name_file
  }
  command <<<
    esl_sfetch sqfile \
      ~{esl_s_fetch} \
      ~{name} \
      ~{name_file} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    f: ""
    esl_s_fetch: ""
    name: ""
    name_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}