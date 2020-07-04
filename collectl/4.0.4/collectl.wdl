version 1.0

task Collectl {
  input {
    Boolean? count
    Boolean? filename
    Boolean? interval
    Boolean? options
    Boolean? playback
    Boolean? plot
    Boolean? subsys
    Boolean? verbose
    Boolean? show_defs
    Boolean? help_extend
    Boolean? help_all
    Boolean? show_options
    Boolean? show_subsys
    Boolean? show_sub_opts
    Boolean? show_top_opts
    Boolean? show_header
    Boolean? show_col_headers
    Boolean? shows_lab_aliases
    Boolean? show_roots_labs
    String? switches
  }
  command <<<
    collectl \
      ~{switches} \
      ~{true="--count" false="" count} \
      ~{true="--filename" false="" filename} \
      ~{true="--interval" false="" interval} \
      ~{true="--options" false="" options} \
      ~{true="--playback" false="" playback} \
      ~{true="--plot" false="" plot} \
      ~{true="--subsys" false="" subsys} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--showdefs" false="" show_defs} \
      ~{true="--helpextend" false="" help_extend} \
      ~{true="--helpall" false="" help_all} \
      ~{true="--showoptions" false="" show_options} \
      ~{true="--showsubsys" false="" show_subsys} \
      ~{true="--showsubopts" false="" show_sub_opts} \
      ~{true="--showtopopts" false="" show_top_opts} \
      ~{true="--showheader" false="" show_header} \
      ~{true="--showcolheaders" false="" show_col_headers} \
      ~{true="--showslabaliases" false="" shows_lab_aliases} \
      ~{true="--showrootslabs" false="" show_roots_labs}
  >>>
  parameter_meta {
    count: "count      collect this number of samples and exit"
    filename: "file       name of directory/file to write to"
    interval: "int        collection interval in seconds [default=1]"
    options: "options    misc formatting options, --showoptions for all d|D - include date in output T - include time in output z - turn off compression of plot files"
    playback: "file       playback results from 'file' (be sure to quote if wild carded) or the shell might mess it up"
    plot: "generate output in 'plot' format"
    subsys: "subsys     specify one or more subsystems [default=cdn]"
    verbose: "display output in verbose format (automatically selected when brief doesn't make sense)"
    show_defs: "print operational defaults"
    help_extend: "extended help, more details descriptions too"
    help_all: "shows all help concatenated together"
    show_options: "show all the options"
    show_subsys: "show all the subsystems"
    show_sub_opts: "show all subsystem specific options"
    show_top_opts: "show --top options"
    show_header: "show file header that 'would be' generated"
    show_col_headers: "show column headers that 'would be' generated"
    shows_lab_aliases: "for SLUB allocator, show non-root aliases"
    show_roots_labs: "same as --showslabaliases but use 'root' names"
    switches: ""
  }
}