version 1.0

task InteropPlotByCycle {
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
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_plot_by_cycle \
      ~{run_folder} \
      ~{if (metric_name) then "--metric-name" else ""} \
      ~{if (filter_by_lane) then "--filter-by-lane" else ""} \
      ~{if (filter_by_channel) then "--filter-by-channel" else ""} \
      ~{if (filter_by_base) then "--filter-by-base" else ""} \
      ~{if (filter_by_surface) then "--filter-by-surface" else ""} \
      ~{if (filter_by_read) then "--filter-by-read" else ""} \
      ~{if (filter_by_cycle) then "--filter-by-cycle" else ""} \
      ~{if (filter_by_tile_number) then "--filter-by-tile-number" else ""} \
      ~{if (filter_by_swath) then "--filter-by-swath" else ""} \
      ~{if (filter_by_section) then "--filter-by-section" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  parameter_meta {
    metric_name: "[Intensity]: Metric to plot"
    filter_by_lane: "[]: Only the data for the selected lane will be displayed"
    filter_by_channel: "[]: Only the data for the selected channel will be displayed"
    filter_by_base: "[]: Only the data for the selected base will be displayed"
    filter_by_surface: "[]: Only the data for the selected surface will be displayed"
    filter_by_read: "[]: Only the data for the selected read will be displayed"
    filter_by_cycle: "[]: Only the data for the selected cycle will be displayed"
    filter_by_tile_number: "[]: Only the data for the selected tile number will be displayed"
    filter_by_swath: "[]: Only the data for the selected swath will be displayed"
    filter_by_section: "[]: Only the data for the selected section will be displayed"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}