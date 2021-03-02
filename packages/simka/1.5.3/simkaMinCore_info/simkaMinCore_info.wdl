version 1.0

task SimkaMinCoreInfo {
  input {
    Boolean? in
    Boolean? version
  }
  command <<<
    simkaMinCore info \
      ~{if (in) then "-in" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  parameter_meta {
    in: "(1 arg) :    filename to a sketch file"
    version: "(0 arg) :    version"
  }
  output {
    File out_stdout = stdout()
  }
}