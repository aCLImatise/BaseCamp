version 1.0

task GfatoolsBlacklist {
  input {
    Int? min_region_length
    Boolean? include_regions_involving
    String in_dot_gfa
  }
  command <<<
    gfatools blacklist \
      ~{in_dot_gfa} \
      ~{if defined(min_region_length) then ("-l " +  '"' + min_region_length + '"') else ""} \
      ~{if (include_regions_involving) then "-b" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.4--hed695b0_0"
  }
  parameter_meta {
    min_region_length: "min region length [100]"
    include_regions_involving: "include regions involving both strands (mostly inversions)"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}