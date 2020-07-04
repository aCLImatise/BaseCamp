version 1.0

task CgatreportTest {
  input {
    String? tracker
    String? page
    String? tracks
    String? transformer
    String? slices
    String? renderer
    String? tracker_dir
    Boolean? force
    String? option
    String? language
    Boolean? no_print
    Boolean? no_show
    String? layout
    Boolean? start_interpreter
    Boolean? start_ipython
    String? workdir
    String? hard_copy
  }
  command <<<
    cgatreport-test \
      ~{if defined(tracker) then ("--tracker " +  '"' + tracker + '"') else ""} \
      ~{if defined(page) then ("--page " +  '"' + page + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(transformer) then ("--transformer " +  '"' + transformer + '"') else ""} \
      ~{if defined(slices) then ("--slices " +  '"' + slices + '"') else ""} \
      ~{if defined(renderer) then ("--renderer " +  '"' + renderer + '"') else ""} \
      ~{if defined(tracker_dir) then ("--trackerdir " +  '"' + tracker_dir + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(option) then ("--option " +  '"' + option + '"') else ""} \
      ~{if defined(language) then ("--language " +  '"' + language + '"') else ""} \
      ~{true="--no-print" false="" no_print} \
      ~{true="--no-show" false="" no_show} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{true="--start-interpreter" false="" start_interpreter} \
      ~{true="--start-ipython" false="" start_ipython} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(hard_copy) then ("--hardcopy " +  '"' + hard_copy + '"') else ""}
  >>>
  parameter_meta {
    tracker: "tracker to use [default=none]"
    page: "render an rst page [default=none]"
    tracks: "tracks to use [default=none]"
    transformer: "add transformation [default=[]]"
    slices: "slices to use [default=none]"
    renderer: "renderer to use [default=table]"
    tracker_dir: "path to trackers [default=trackers]"
    force: "force recomputation of data by deleting cached results [default=False]"
    option: "renderer options - supply as key=value pairs (without spaces). [default=[]]"
    language: "output language for snippet. Use ``rst`` to create a snippet to paste into a cgatreport document. Use ``notebook`` to create a snippet to paste into an ipython notebook [default=rst]"
    no_print: "do not print an rst text element to create the displayed plots [default=True]."
    no_show: "do not show a plot [default=True]."
    layout: "output rst with layout [default=none]."
    start_interpreter: "do not render, but start python interpreter [default=False]."
    start_ipython: "do not render, start ipython interpreter [default=False]."
    workdir: "working directory - change to this directory before executing [default=none]"
    hard_copy: "output images of plots. The parameter should contain one or more %s The suffix determines the type of plot. [default=none]."
  }
}