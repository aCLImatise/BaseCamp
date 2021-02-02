version 1.0

task TdbQuery {
  input {
    Boolean? root
    String? release
  }
  command <<<
    tdbQuery \
      ~{if (root) then "-root" else ""} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""}
  >>>
  parameter_meta {
    root: "=/path/to/trackDb/root/dir"
    release: "|beta|public"
  }
  output {
    File out_stdout = stdout()
  }
}