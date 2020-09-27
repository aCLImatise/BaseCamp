class: CommandLineTool
id: make_emperor.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_number_of_axes
  doc: "Number of axes to be incorporated in the plot. Only 3\nwill be displayed at\
    \ any given time but this option\nmodifies how many axes you can use for your\n\
    visualization. Note that Emperor will only use the\naxes that explain more than\
    \ 0.5% (this will be shown\nas 1% in the GUI)of the variability [default: 10]"
  type: long
  inputBinding:
    prefix: --number_of_axes
- id: in_custom_axes
  doc: "Comma-separated list of metadata categories to use as\ncustom axes in the\
    \ plot. For instance, if there is a\ntime category and you would like to see the\
    \ samples\nplotted on that axis instead of PC1, PC2, etc., you\nwould pass time\
    \ as the value of this option.  Note: if\nthere is any non-numeric data in the\
    \ metadata column,\nan error will be presented [default: none]"
  type: long
  inputBinding:
    prefix: --custom_axes
- id: in_add_unique_columns
  doc: "Add to the output categories of the mapping file the\ncolumns where all values\
    \ are different. Note: if the\nresult of one of the concatenated fields in --color_by\n\
    is a column where all values are unique, the resulting\ncolumn will get removed\
    \ as well [default: False]"
  type: File
  inputBinding:
    prefix: --add_unique_columns
- id: in_add_vectors
  doc: "Comma-sparated category(ies) used to add connecting\nlines (vectors) between\
    \ samples. The first category\nspecifies the samples that will be connected by\
    \ the\nvectors, whilst the second category (optionally)\ndetermines the order\
    \ in which the samples will be\nconnected. [default: [None, None]]"
  type: string
  inputBinding:
    prefix: --add_vectors
- id: in_color_by
  doc: "Comma-separated list of metadata categories (column\nheaders) to color by\
    \ in the plots. The categories must\nmatch the name of a column header in the\
    \ mapping file\nexactly. Multiple categories can be listed by comma\nseparating\
    \ them without spaces. The user can also\ncombine columns in the mapping file\
    \ by separating the\ncategories by \"&&\" without spaces. [default=color by\n\
    all categories except ones where all values are\ndifferent]"
  type: File
  inputBinding:
    prefix: --color_by
- id: in_bi_plot_fp
  doc: "Output filepath that will contain the coordinates\nwhere each taxonomic sphere\
    \ is centered. [default:\nnone]"
  type: File
  inputBinding:
    prefix: --biplot_fp
- id: in_compare_plots
  doc: "Passing a directory with the -i (--input_coords)\noption in combination with\
    \ this flag results in a set\nof bars connecting the replicated samples across\
    \ all\nthe input files. [default=False]"
  type: boolean
  inputBinding:
    prefix: --compare_plots
- id: in_ellipsoid_method
  doc: "Used only when plotting ellipsoids for jackknifed beta\ndiversity (i.e. using\
    \ a directory of coord files\ninstead of a single coord file). Valid values are\n\
    \"IQR\" (for inter-quartile ranges) and \"sdev\" (for\nstandard deviation). [default=IQR]"
  type: File
  inputBinding:
    prefix: --ellipsoid_method
- id: in_ignore_missing_samples
  doc: "This will overpass the error raised when the\ncoordinates file contains samples\
    \ that are not present\nin the mapping file. Be aware that this is very\nmisleading\
    \ as the PCoA is accounting for all the\nsamples and removing some samples could\
    \ lead to\nerroneous/skewed interpretations."
  type: boolean
  inputBinding:
    prefix: --ignore_missing_samples
- id: in_n_tax_a_to_keep
  doc: "Number of taxonomic groups from the \"--taxa_fp\" file\nto display. Passing\
    \ \"-1\" will cause to display all the\ntaxonomic groups, this option is only\
    \ used when\ncreating BiPlots. [default=10]"
  type: long
  inputBinding:
    prefix: --n_taxa_to_keep
- id: in_master_pco_a
  doc: "Used only when the input is a directory of coordinate\nfiles i. e. for jackknifed\
    \ beta diversity plot or for\na coordinate comparison plot (procrustes analysis).\n\
    The coordinates in this file will be the center of\neach ellipsoid in the case\
    \ of a jackknifed PCoA plot\nor the center where the connecting arrows originate\n\
    from for a comparison plot. [default: arbitrarily\nselected file from the input\
    \ directory for a\njackknifed plot or None for a comparison plot in this\ncase\
    \ one file will be connected to the next one and so\non]"
  type: File
  inputBinding:
    prefix: --master_pcoa
- id: in_tax_a_fp
  doc: "Path to a summarized taxa file (i. e. the output of\nsummarize_taxa.py). This\
    \ option is only used when\ncreating BiPlots. [default=none]"
  type: File
  inputBinding:
    prefix: --taxa_fp
- id: in_missing_custom_axes_values
  doc: "Option to override the error shown when the catergory\nused in '--custom_axes'\
    \ has non-numeric values in the\nmapping file. The basic format is\ncustom_axis:new_value.\
    \ For example, if you want to\nplot in time 0 all the samples that do not have\
    \ a\nnumeric value in the column Time. you would pass -x\n\"Time:0\". Additionally,\
    \ you can pass this format custo\nm_axis:other_column==value_in_other_column=new_value,\n\
    with this format you can specify different values\n(new_value) to use in the substitution\
    \ based on other\ncolumn (other_column) value (value_in_other_column);\nsee example\
    \ above. This option could be used in all\nexplicit axes."
  type: File
  inputBinding:
    prefix: --missing_custom_axes_values
- id: in_output_dir
  doc: "path to the output directory that will contain the\nPCoA plot. [default: emperor]"
  type: File
  inputBinding:
    prefix: --output_dir
- id: in_number_of_segments
  doc: "the number of segments to generate any spheres, this\nincludes the samples,\
    \ the taxa (biplots), and the\nconfidence intervals (jackknifing). Higher values\
    \ will\nresult in better quality but can make the plots less\nresponsive, also\
    \ it will make the resulting SVG images\nbigger. The value should be between 4\
    \ and 14.\n[default: 8]"
  type: long
  inputBinding:
    prefix: --number_of_segments
- id: in_input_coords
  doc: "Depending on the plot to be generated, can be one of\nthe following: (1) Filepath\
    \ of a coordinates file to\ncreate a PCoA plot. (2) Directory path to a folder\n\
    containing coordinates files to create a jackknifed\nPCoA plot. (3) Directory\
    \ path to a folder containing\ncoordinates files to compare the coordinates there\n\
    contained when --compare_plots is enabled (useful for\nprocustes analysis plots).\
    \ For directories: hidden\nfiles, sub-directories and files suffixed as\n'_procrustes_results.txt'\
    \ [REQUIRED]"
  type: File
  inputBinding:
    prefix: --input_coords
- id: in_map_fp
  doc: "path to a metadata mapping file [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --map_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_add_unique_columns
  doc: "Add to the output categories of the mapping file the\ncolumns where all values\
    \ are different. Note: if the\nresult of one of the concatenated fields in --color_by\n\
    is a column where all values are unique, the resulting\ncolumn will get removed\
    \ as well [default: False]"
  type: File
  outputBinding:
    glob: $(inputs.in_add_unique_columns)
- id: out_bi_plot_fp
  doc: "Output filepath that will contain the coordinates\nwhere each taxonomic sphere\
    \ is centered. [default:\nnone]"
  type: File
  outputBinding:
    glob: $(inputs.in_bi_plot_fp)
- id: out_tax_a_fp
  doc: "Path to a summarized taxa file (i. e. the output of\nsummarize_taxa.py). This\
    \ option is only used when\ncreating BiPlots. [default=none]"
  type: File
  outputBinding:
    glob: $(inputs.in_tax_a_fp)
- id: out_output_dir
  doc: "path to the output directory that will contain the\nPCoA plot. [default: emperor]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- make_emperor.py
