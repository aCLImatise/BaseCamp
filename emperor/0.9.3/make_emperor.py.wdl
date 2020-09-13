version 1.0

task MakeEmperorpy {
  input {
    Boolean? verbose
    Int? number_of_axes
    Int? custom_axes
    File? add_unique_columns
    String? add_vectors
    File? color_by
    File? bi_plot_fp
    Boolean? compare_plots
    File? ellipsoid_method
    Boolean? ignore_missing_samples
    Int? n_tax_a_to_keep
    File? master_pco_a
    File? tax_a_fp
    File? missing_custom_axes_values
    File? output_dir
    Int? number_of_segments
    File? input_coords
    File? map_fp
  }
  command <<<
    make_emperor_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(number_of_axes) then ("--number_of_axes " +  '"' + number_of_axes + '"') else ""} \
      ~{if defined(custom_axes) then ("--custom_axes " +  '"' + custom_axes + '"') else ""} \
      ~{if (add_unique_columns) then "--add_unique_columns" else ""} \
      ~{if defined(add_vectors) then ("--add_vectors " +  '"' + add_vectors + '"') else ""} \
      ~{if defined(color_by) then ("--color_by " +  '"' + color_by + '"') else ""} \
      ~{if defined(bi_plot_fp) then ("--biplot_fp " +  '"' + bi_plot_fp + '"') else ""} \
      ~{if (compare_plots) then "--compare_plots" else ""} \
      ~{if defined(ellipsoid_method) then ("--ellipsoid_method " +  '"' + ellipsoid_method + '"') else ""} \
      ~{if (ignore_missing_samples) then "--ignore_missing_samples" else ""} \
      ~{if defined(n_tax_a_to_keep) then ("--n_taxa_to_keep " +  '"' + n_tax_a_to_keep + '"') else ""} \
      ~{if defined(master_pco_a) then ("--master_pcoa " +  '"' + master_pco_a + '"') else ""} \
      ~{if defined(tax_a_fp) then ("--taxa_fp " +  '"' + tax_a_fp + '"') else ""} \
      ~{if defined(missing_custom_axes_values) then ("--missing_custom_axes_values " +  '"' + missing_custom_axes_values + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(number_of_segments) then ("--number_of_segments " +  '"' + number_of_segments + '"') else ""} \
      ~{if defined(input_coords) then ("--input_coords " +  '"' + input_coords + '"') else ""} \
      ~{if defined(map_fp) then ("--map_fp " +  '"' + map_fp + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    number_of_axes: "Number of axes to be incorporated in the plot. Only 3\\nwill be displayed at any given time but this option\\nmodifies how many axes you can use for your\\nvisualization. Note that Emperor will only use the\\naxes that explain more than 0.5% (this will be shown\\nas 1% in the GUI)of the variability [default: 10]"
    custom_axes: "Comma-separated list of metadata categories to use as\\ncustom axes in the plot. For instance, if there is a\\ntime category and you would like to see the samples\\nplotted on that axis instead of PC1, PC2, etc., you\\nwould pass time as the value of this option.  Note: if\\nthere is any non-numeric data in the metadata column,\\nan error will be presented [default: none]"
    add_unique_columns: "Add to the output categories of the mapping file the\\ncolumns where all values are different. Note: if the\\nresult of one of the concatenated fields in --color_by\\nis a column where all values are unique, the resulting\\ncolumn will get removed as well [default: False]"
    add_vectors: "Comma-sparated category(ies) used to add connecting\\nlines (vectors) between samples. The first category\\nspecifies the samples that will be connected by the\\nvectors, whilst the second category (optionally)\\ndetermines the order in which the samples will be\\nconnected. [default: [None, None]]"
    color_by: "Comma-separated list of metadata categories (column\\nheaders) to color by in the plots. The categories must\\nmatch the name of a column header in the mapping file\\nexactly. Multiple categories can be listed by comma\\nseparating them without spaces. The user can also\\ncombine columns in the mapping file by separating the\\ncategories by \\\"&&\\\" without spaces. [default=color by\\nall categories except ones where all values are\\ndifferent]"
    bi_plot_fp: "Output filepath that will contain the coordinates\\nwhere each taxonomic sphere is centered. [default:\\nnone]"
    compare_plots: "Passing a directory with the -i (--input_coords)\\noption in combination with this flag results in a set\\nof bars connecting the replicated samples across all\\nthe input files. [default=False]"
    ellipsoid_method: "Used only when plotting ellipsoids for jackknifed beta\\ndiversity (i.e. using a directory of coord files\\ninstead of a single coord file). Valid values are\\n\\\"IQR\\\" (for inter-quartile ranges) and \\\"sdev\\\" (for\\nstandard deviation). [default=IQR]"
    ignore_missing_samples: "This will overpass the error raised when the\\ncoordinates file contains samples that are not present\\nin the mapping file. Be aware that this is very\\nmisleading as the PCoA is accounting for all the\\nsamples and removing some samples could lead to\\nerroneous/skewed interpretations."
    n_tax_a_to_keep: "Number of taxonomic groups from the \\\"--taxa_fp\\\" file\\nto display. Passing \\\"-1\\\" will cause to display all the\\ntaxonomic groups, this option is only used when\\ncreating BiPlots. [default=10]"
    master_pco_a: "Used only when the input is a directory of coordinate\\nfiles i. e. for jackknifed beta diversity plot or for\\na coordinate comparison plot (procrustes analysis).\\nThe coordinates in this file will be the center of\\neach ellipsoid in the case of a jackknifed PCoA plot\\nor the center where the connecting arrows originate\\nfrom for a comparison plot. [default: arbitrarily\\nselected file from the input directory for a\\njackknifed plot or None for a comparison plot in this\\ncase one file will be connected to the next one and so\\non]"
    tax_a_fp: "Path to a summarized taxa file (i. e. the output of\\nsummarize_taxa.py). This option is only used when\\ncreating BiPlots. [default=none]"
    missing_custom_axes_values: "Option to override the error shown when the catergory\\nused in '--custom_axes' has non-numeric values in the\\nmapping file. The basic format is\\ncustom_axis:new_value. For example, if you want to\\nplot in time 0 all the samples that do not have a\\nnumeric value in the column Time. you would pass -x\\n\\\"Time:0\\\". Additionally, you can pass this format custo\\nm_axis:other_column==value_in_other_column=new_value,\\nwith this format you can specify different values\\n(new_value) to use in the substitution based on other\\ncolumn (other_column) value (value_in_other_column);\\nsee example above. This option could be used in all\\nexplicit axes."
    output_dir: "path to the output directory that will contain the\\nPCoA plot. [default: emperor]"
    number_of_segments: "the number of segments to generate any spheres, this\\nincludes the samples, the taxa (biplots), and the\\nconfidence intervals (jackknifing). Higher values will\\nresult in better quality but can make the plots less\\nresponsive, also it will make the resulting SVG images\\nbigger. The value should be between 4 and 14.\\n[default: 8]"
    input_coords: "Depending on the plot to be generated, can be one of\\nthe following: (1) Filepath of a coordinates file to\\ncreate a PCoA plot. (2) Directory path to a folder\\ncontaining coordinates files to create a jackknifed\\nPCoA plot. (3) Directory path to a folder containing\\ncoordinates files to compare the coordinates there\\ncontained when --compare_plots is enabled (useful for\\nprocustes analysis plots). For directories: hidden\\nfiles, sub-directories and files suffixed as\\n'_procrustes_results.txt' [REQUIRED]"
    map_fp: "path to a metadata mapping file [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_add_unique_columns = "${in_add_unique_columns}"
    File out_bi_plot_fp = "${in_bi_plot_fp}"
    File out_tax_a_fp = "${in_tax_a_fp}"
    File out_output_dir = "${in_output_dir}"
  }
}