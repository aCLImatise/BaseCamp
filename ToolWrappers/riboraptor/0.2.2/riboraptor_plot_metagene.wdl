version 1.0

task RiboraptorPlotmetagene {
  input {
    File? counts
    String? title
    Boolean? marker
    String? color
    Boolean? milli_fy_labels
    Boolean? identify_peak
    String? positions
    File? save_to
    String? ylabel
    Boolean? ascii
  }
  command <<<
    riboraptor plot_metagene \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (marker) then "--marker" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (milli_fy_labels) then "--millify_labels" else ""} \
      ~{if (identify_peak) then "--identify_peak" else ""} \
      ~{if defined(positions) then ("--positions " +  '"' + positions + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if defined(ylabel) then ("--ylabel " +  '"' + ylabel + '"') else ""} \
      ~{if (ascii) then "--ascii" else ""}
  >>>
  parameter_meta {
    counts: "Path to counts file (if not stdin)"
    title: "Plot Title"
    marker: "[o|x]    Marker (o/x) for plots"
    color: "Color"
    milli_fy_labels: "Convert labels on Y-axis to concise form?"
    identify_peak: "Identify Peak?"
    positions: "Range of positions to plot"
    save_to: "Path to file (png/pdf) to save to"
    ylabel: "Y axix label"
    ascii: "Do not plot ascii"
  }
  output {
    File out_stdout = stdout()
  }
}