version 1.0

task Igdiscover {
  input {
    Boolean? profile
  }
  command <<<
    igdiscover \
      ~{if (profile) then "--profile" else ""}
  >>>
  parameter_meta {
    profile: "Save profiling information to igdiscover.prof"
  }
  output {
    File out_stdout = stdout()
  }
}