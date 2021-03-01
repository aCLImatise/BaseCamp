version 1.0

task Vcfanno {
  input {
    File? base_path
    Boolean? ends
    File? lua
    Int? number_use_default
    Boolean? permissive_overlap
  }
  command <<<
    vcfanno \
      ~{if defined(base_path) then ("-base-path " +  '"' + base_path + '"') else ""} \
      ~{if (ends) then "-ends" else ""} \
      ~{if defined(lua) then ("-lua " +  '"' + lua + '"') else ""} \
      ~{if defined(number_use_default) then ("-p " +  '"' + number_use_default + '"') else ""} \
      ~{if (permissive_overlap) then "-permissive-overlap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_path: "optional base-path to prepend to annotation files in the config"
    ends: "annotate the start and end as well as the interval itself."
    lua: "optional path to a file containing custom javascript functions to be used as ops"
    number_use_default: "number of processes to use. (default 2)"
    permissive_overlap: "annotate with an overlapping variant even it doesn't share the same ref and alt alleles. Default is to require exact match between variants.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}