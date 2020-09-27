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
      ~{if (count) then "--count" else ""} \
      ~{if (filename) then "--filename" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (options) then "--options" else ""} \
      ~{if (playback) then "--playback" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if (subsys) then "--subsys" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_defs) then "--showdefs" else ""} \
      ~{if (help_extend) then "--helpextend" else ""} \
      ~{if (help_all) then "--helpall" else ""} \
      ~{if (show_options) then "--showoptions" else ""} \
      ~{if (show_subsys) then "--showsubsys" else ""} \
      ~{if (show_sub_opts) then "--showsubopts" else ""} \
      ~{if (show_top_opts) then "--showtopopts" else ""} \
      ~{if (show_header) then "--showheader" else ""} \
      ~{if (show_col_headers) then "--showcolheaders" else ""} \
      ~{if (shows_lab_aliases) then "--showslabaliases" else ""} \
      ~{if (show_roots_labs) then "--showrootslabs" else ""}
  >>>
  parameter_meta {
    count: "count      collect this number of samples and exit"
    filename: "file       name of directory/file to write to"
    interval: "int        collection interval in seconds [default=1]"
    options: "options    misc formatting options, --showoptions for all\\nd|D - include date in output\\nT - include time in output\\nz - turn off compression of plot files"
    playback: "file       playback results from 'file' (be sure to quote\\nif wild carded) or the shell might mess it up"
    plot: "generate output in 'plot' format"
    subsys: "subsys     specify one or more subsystems [default=cdn]"
    verbose: "display output in verbose format (automatically\\nselected when brief doesn't make sense)"
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
  output {
    File out_stdout = stdout()
  }
}