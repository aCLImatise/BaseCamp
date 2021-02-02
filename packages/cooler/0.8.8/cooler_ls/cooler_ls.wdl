version 1.0

task CoolerLs {
  input {
    Boolean? long
    String cool_path
  }
  command <<<
    cooler ls \
      ~{cool_path} \
      ~{if (long) then "--long" else ""}
  >>>
  parameter_meta {
    long: "Long listing format"
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}