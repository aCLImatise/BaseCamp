version 1.0

task Stats {
  input {
    String? prefix_output_stats
    Boolean? h
    String show
    String files
    String maf_file
    File path
    String this
    String to
    String a
    String maf
  }
  command <<<
    stats \
      ~{show} \
      ~{files} \
      ~{maf_file} \
      ~{path} \
      ~{this} \
      ~{to} \
      ~{a} \
      ~{maf} \
      ~{if defined(prefix_output_stats) then ("-p " +  '"' + prefix_output_stats + '"') else ""} \
      ~{if (h) then "-h" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_output_stats: "Prefix for output stats files [default: stats]"
    h: ""
    show: ""
    files: ""
    maf_file: ""
    path: ""
    this: ""
    to: ""
    a: ""
    maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}