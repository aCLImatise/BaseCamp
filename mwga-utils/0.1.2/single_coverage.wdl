version 1.0

task SingleCoverage {
  input {
    Boolean? h
    String show
    String maf_file
    File path
    String this
    String to
    String a
    String maf
  }
  command <<<
    single_coverage \
      ~{show} \
      ~{maf_file} \
      ~{path} \
      ~{this} \
      ~{to} \
      ~{a} \
      ~{maf} \
      ~{if (h) then "-h" else ""}
  >>>
  parameter_meta {
    h: ""
    show: ""
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