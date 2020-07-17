version 1.0

task InteropDumptext {
  input {
    Boolean? subset
    Boolean? metric
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_dumptext \
      ~{run_folder} \
      ~{true="--subset" false="" subset} \
      ~{true="--metric" false="" metric} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    subset: "[0]: Number of metrics to subsample"
    metric: "[]: Name of metric to load, e.g. --metric=Tile to load TileMetricsOut.bin"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}