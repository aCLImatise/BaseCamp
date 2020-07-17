version 1.0

task IuVisualizePlotDicts {
  input {
    String? dest
    String? title
    Boolean? split_tiles
    String plot_dict
  }
  command <<<
    iu-visualize-plot-dicts \
      ~{plot_dict} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--split-tiles" false="" split_tiles}
  >>>
  parameter_meta {
    dest: "Figure destination"
    title: "Title to appear at the top of the figure"
    split_tiles: "When set, quality curves will be shown separately for each tile"
    plot_dict: "cPickle dictionary that contains quality score info ready for plotting"
  }
}