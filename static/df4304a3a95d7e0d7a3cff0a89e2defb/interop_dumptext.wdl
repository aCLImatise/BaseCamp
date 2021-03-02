version 1.0

task InteropDumptext {
  input {
    Boolean? subset
    Boolean? metric
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_dumptext \
      ~{run_folder} \
      ~{if (subset) then "--subset" else ""} \
      ~{if (metric) then "--metric" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0"
  }
  parameter_meta {
    subset: "[0]: Number of metrics to subsample"
    metric: "[]: Name of metric to load, e.g. --metric=Tile to load TileMetricsOut.bin"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}