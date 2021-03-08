version 1.0

task MashInfo {
  input {
    Boolean? only_show_info
    Boolean? dump_sketches_c
    String option
  }
  command <<<
    mash info \
      ~{option} \
      ~{if (only_show_info) then "-H" else ""} \
      ~{if (dump_sketches_c) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mash:2.3--ha61e061_0"
  }
  parameter_meta {
    only_show_info: "Only show header info. Do not list each sketch. Incompatible with -d,"
    dump_sketches_c: "Dump sketches in JSON format. Incompatible with -H, -t, and -c."
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}