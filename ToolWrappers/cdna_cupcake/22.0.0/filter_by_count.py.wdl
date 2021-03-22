version 1.0

task FilterByCountpy {
  input {
    Int? min_count
    Boolean? dun_use_group_count
  }
  command <<<
    filter_by_count_py \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if (dun_use_group_count) then "--dun_use_group_count" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    min_count: "Minimum FL count (default: 2)"
    dun_use_group_count: "Turn off more stringent min count (default: off)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}