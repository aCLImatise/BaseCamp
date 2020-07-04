version 1.0

task InteropPlotByLane {
  input {
    Boolean? metric_name
    Boolean? filter_by_lane
    Boolean? filter_by_channel
    Boolean? filter_by_base
    Boolean? filter_by_surface
    Boolean? filter_by_read
    Boolean? filter_by_cycle
    Boolean? filter_by_tile_number
    Boolean? filter_by_swath
    Boolean? filter_by_section
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_plot_by_lane \
      ~{run_folder} \
      ~{true="--metric-name" false="" metric_name} \
      ~{true="--filter-by-lane" false="" filter_by_lane} \
      ~{true="--filter-by-channel" false="" filter_by_channel} \
      ~{true="--filter-by-base" false="" filter_by_base} \
      ~{true="--filter-by-surface" false="" filter_by_surface} \
      ~{true="--filter-by-read" false="" filter_by_read} \
      ~{true="--filter-by-cycle" false="" filter_by_cycle} \
      ~{true="--filter-by-tile-number" false="" filter_by_tile_number} \
      ~{true="--filter-by-swath" false="" filter_by_swath} \
      ~{true="--filter-by-section" false="" filter_by_section} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    metric_name: "[ClusterCount]: Metric to plot"
    filter_by_lane: "[]: Only the data for the selected lane will be displayed"
    filter_by_channel: "[]: Only the data for the selected channel will be displayed"
    filter_by_base: "[]: Only the data for the selected base will be displayed"
    filter_by_surface: "[]: Only the data for the selected surface will be displayed"
    filter_by_read: "[]: Only the data for the selected read will be displayed"
    filter_by_cycle: "[]: Only the data for the selected cycle will be displayed"
    filter_by_tile_number: "[]: Only the data for the selected tile number will be displayed"
    filter_by_swath: "[]: Only the data for the selected swath will be displayed"
    filter_by_section: "[]: Only the data for the selected section will be displayed"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}