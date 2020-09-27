version 1.0

task Cgatreporttest {
  input {
    String? tracker
    String? page
    String? tracks
    String? transformer
    String? slices
    String? renderer
    File? tracker_dir
    Boolean? force
    String? option
    String? language
    Boolean? no_print
    Boolean? no_show
    String? layout
    Boolean? start_interpreter
    Boolean? start_ipython
    Directory? workdir
    String? hard_copy
    String cgat_report_test
  }
  command <<<
    cgatreport_test \
      ~{cgat_report_test} \
      ~{if defined(tracker) then ("--tracker " +  '"' + tracker + '"') else ""} \
      ~{if defined(page) then ("--page " +  '"' + page + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(transformer) then ("--transformer " +  '"' + transformer + '"') else ""} \
      ~{if defined(slices) then ("--slices " +  '"' + slices + '"') else ""} \
      ~{if defined(renderer) then ("--renderer " +  '"' + renderer + '"') else ""} \
      ~{if defined(tracker_dir) then ("--trackerdir " +  '"' + tracker_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(option) then ("--option " +  '"' + option + '"') else ""} \
      ~{if defined(language) then ("--language " +  '"' + language + '"') else ""} \
      ~{if (no_print) then "--no-print" else ""} \
      ~{if (no_show) then "--no-show" else ""} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{if (start_interpreter) then "--start-interpreter" else ""} \
      ~{if (start_ipython) then "--start-ipython" else ""} \
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
    force: "force recomputation of data by deleting cached results\\n[default=False]"
    option: "renderer options - supply as key=value pairs (without\\nspaces). [default=[]]"
    language: "output language for snippet. Use ``rst`` to create a\\nsnippet to paste into a cgatreport document. Use\\n``notebook`` to create a snippet to paste into an\\nipython notebook [default=rst]"
    no_print: "do not print an rst text element to create the\\ndisplayed plots [default=True]."
    no_show: "do not show a plot [default=True]."
    layout: "output rst with layout [default=none]."
    start_interpreter: "do not render, but start python interpreter\\n[default=False]."
    start_ipython: "do not render, start ipython interpreter\\n[default=False]."
    workdir: "working directory - change to this directory before\\nexecuting [default=none]"
    hard_copy: "output images of plots. The parameter should contain\\none or more %s The suffix determines the type of plot.\\n[default=none].\\n"
    cgat_report_test: "will collect all:class:`Trackers` and will execute them."
  }
  output {
    File out_stdout = stdout()
  }
}