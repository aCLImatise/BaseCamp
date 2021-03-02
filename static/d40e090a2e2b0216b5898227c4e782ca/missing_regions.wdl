version 1.0

task MissingRegions {
  input {
    Boolean? h
    String show
    String maf_file
    String reference
    File path
    String this
    String to
    String a
    String fast_a
    String maf
    File var_file
    String for
    String the
  }
  command <<<
    missing_regions \
      ~{show} \
      ~{maf_file} \
      ~{reference} \
      ~{path} \
      ~{this} \
      ~{to} \
      ~{a} \
      ~{fast_a} \
      ~{maf} \
      ~{var_file} \
      ~{for} \
      ~{the} \
      ~{if (h) then "-h" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    h: ""
    show: ""
    maf_file: ""
    reference: ""
    path: ""
    this: ""
    to: ""
    a: ""
    fast_a: ""
    maf: ""
    var_file: ""
    for: ""
    the: ""
  }
  output {
    File out_stdout = stdout()
  }
}