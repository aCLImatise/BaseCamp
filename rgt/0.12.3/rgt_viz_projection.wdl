version 1.0

task RgtVizProjection {
  input {
    Boolean? file_name_reference
    Boolean? file_name_query
    Boolean? directory_name_output
    Boolean? title_shown_default
    Boolean? group_data_optional
    Boolean? color_data_optional
    Boolean? bg
    Boolean? union
    Boolean? organism
    Boolean? log
    Boolean? color
    Boolean? show
    Boolean? table
    Boolean? bed
    Boolean? pw
    Boolean? ph
    Boolean? cfp
    Boolean? load
  }
  command <<<
    rgt-viz projection \
      ~{true="-r" false="" file_name_reference} \
      ~{true="-q" false="" file_name_query} \
      ~{true="-o" false="" directory_name_output} \
      ~{true="-t" false="" title_shown_default} \
      ~{true="-g" false="" group_data_optional} \
      ~{true="-c" false="" color_data_optional} \
      ~{true="-bg" false="" bg} \
      ~{true="-union" false="" union} \
      ~{true="-organism" false="" organism} \
      ~{true="-log" false="" log} \
      ~{true="-color" false="" color} \
      ~{true="-show" false="" show} \
      ~{true="-table" false="" table} \
      ~{true="-bed" false="" bed} \
      ~{true="-pw" false="" pw} \
      ~{true="-ph" false="" ph} \
      ~{true="-cfp" false="" cfp} \
      ~{true="-load" false="" load}
  >>>
  parameter_meta {
    file_name_reference: "The file name of the reference Experimental Matrix. Multiple references are acceptable. (default: None)"
    file_name_query: "The file name of the query Experimental Matrix. Multiple queries are acceptable. (default: None)"
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    title_shown_default: "The title shown on the top of the plot and also the folder name. (default: projection_test)"
    group_data_optional: "Group the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: None)"
    color_data_optional: "Color the data by any optional column (for example, 'cell') of experimental matrix, or None. (default: regions)"
    bg: "Define a BED file as background. If not defined, the background is whole genome according to the given organism. (default: None)"
    union: "Take the union of references as background for binominal test. (default: False)"
    organism: "Define the organism. (default: hg19)"
    log: "Set y axis of the plot in log scale. (default: False)"
    color: "Define the specific colors with the given column \"color\" in experimental matrix. The color should be in the format of matplotlib.colors. For example, \"r\" for red, \"b\" for blue, or \"(100, 35, 138)\" for RGB. (default: False)"
    show: "Show the figure in the screen. (default: False)"
    table: "Store the tables of the figure in text format. (default: False)"
    bed: "Output BED files for the regions of query which overlap the reference. (default: False)"
    pw: "Define the width of single panel. (default: 5)"
    ph: "Define the height of single panel. (default: 3)"
    cfp: "Define the cutoff of the proportion. (default: 0)"
    load: "Load the BED files later during processing, which saves memory usage when dealing with large number of BED files."
  }
}