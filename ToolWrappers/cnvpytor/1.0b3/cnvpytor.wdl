version 1.0

task Cnvpytor {
  input {
    Boolean? download
    Array[String] root
    Boolean? version
  }
  command <<<
    cnvpytor \
      ~{if (download) then "-download" else ""} \
      ~{if defined(root) then ("-root " +  '"' + root + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    download: ""
    root: ""
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}