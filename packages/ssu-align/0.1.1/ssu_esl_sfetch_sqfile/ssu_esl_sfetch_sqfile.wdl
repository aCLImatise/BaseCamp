version 1.0

task SsueslsfetchSqfile {
  input {
    File? index
    File? f
    String name
    String ssu_esl_s_fetch
    String name_file
  }
  command <<<
    ssu_esl_sfetch sqfile \
      ~{name} \
      ~{ssu_esl_s_fetch} \
      ~{name_file} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    f: ""
    name: ""
    ssu_esl_s_fetch: ""
    name_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}