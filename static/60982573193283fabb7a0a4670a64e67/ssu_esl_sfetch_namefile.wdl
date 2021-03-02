version 1.0

task SsueslsfetchNamefile {
  input {
    File? index
    File? f
    String ssu_esl_s_fetch
    String sq_file
    String name
  }
  command <<<
    ssu_esl_sfetch namefile \
      ~{ssu_esl_s_fetch} \
      ~{sq_file} \
      ~{name} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: ""
    f: ""
    ssu_esl_s_fetch: ""
    sq_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}