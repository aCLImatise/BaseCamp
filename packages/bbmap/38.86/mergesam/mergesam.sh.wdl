version 1.0

task Mergesamsh {
  input {
    Boolean? da
    String files
    String out
  }
  command <<<
    mergesam_sh \
      ~{files} \
      ~{out} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    da: "Disable assertions."
    files: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}