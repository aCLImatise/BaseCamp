version 1.0

task Benchmark2mates {
  input {
    Boolean? prefix_resulting_mates
    Boolean? generate_bambus_optional
  }
  command <<<
    benchmark2mates \
      ~{if (prefix_resulting_mates) then "-o" else ""} \
      ~{if (generate_bambus_optional) then "-C" else ""}
  >>>
  parameter_meta {
    prefix_resulting_mates: "prefix for the resulting .mates file. (required)"
    generate_bambus_optional: "generate Bambus <outprefix>.conf file (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}