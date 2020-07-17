version 1.0

task Benchmark2mates {
  input {
    Boolean? prefix_resulting_mates
    Boolean? generate_file_optional
  }
  command <<<
    benchmark2mates \
      ~{true="-o" false="" prefix_resulting_mates} \
      ~{true="-C" false="" generate_file_optional}
  >>>
  parameter_meta {
    prefix_resulting_mates: "prefix for the resulting .mates file. (required)"
    generate_file_optional: "generate Bambus <outprefix>.conf file (optional)"
  }
}