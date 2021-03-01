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
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    da: "Disable assertions."
    files: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}