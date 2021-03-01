version 1.0

task GanonTable {
  input {
    Boolean? min_percentage
    Boolean? min_count
  }
  command <<<
    ganon table \
      ~{if (min_percentage) then "--min-percentage" else ""} \
      ~{if (min_count) then "--min-count" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    min_percentage: ""
    min_count: ""
  }
  output {
    File out_stdout = stdout()
  }
}