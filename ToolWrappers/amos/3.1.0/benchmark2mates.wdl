version 1.0

task Benchmark2mates {
  input {
    Boolean? prefix_resulting_mates
    Boolean? generate_file_optional
  }
  command <<<
    benchmark2mates \
      ~{if (prefix_resulting_mates) then "-o" else ""} \
      ~{if (generate_file_optional) then "-C" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_resulting_mates: "prefix for the resulting .mates file. (required)"
    generate_file_optional: "generate Bambus <outprefix>.conf file (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}