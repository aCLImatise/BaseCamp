version 1.0

task Entropyprofile {
  input {
    Boolean? b
    Boolean? brief
    Boolean? help
    String? l
    String? min_len
  }
  command <<<
    entropy_profile \
      ~{if (b) then "-b" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    brief: "Brief output:  3 columns with header line"
    help: "Print this message"
    l: ""
    min_len: "Don't output any sequence shorter than <n> characters\\n"
  }
  output {
    File out_stdout = stdout()
  }
}