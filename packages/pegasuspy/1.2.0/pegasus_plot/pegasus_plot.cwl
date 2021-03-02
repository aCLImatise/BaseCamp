class: CommandLineTool
id: pegasus_plot.cwl
inputs:
- id: in_dpi
  doc: 'DPI value for the figure. [default: 500]'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_restriction
  doc: "...     Set restriction if you only want to plot a subset of data. Multiple\
    \ <restriction> strings are allowed. There are two types of <restriction>s: global\
    \ restriction and attribute-specific restriction. Global restriction appiles to\
    \ all attributes in ``attrs`` and takes the format of 'key:value,value...', or\
    \ 'key:~value,value...'. This restriction selects cells with the ``data.obs[key]``\
    \ values belong to 'value,value...' (or not belong to if '~' shows). Attribute-specific\
    \ restriction takes the format of 'attr:key:value,value...', or 'attr:key:~value,value...'.\
    \ It only applies to one attribute 'attr'. If 'attr' and 'key' are the same, one\
    \ can use '.' to replace 'key' (e.g. ``cluster_labels:.:value1,value2``).Each\
    \ <restriction> takes the format of 'attr:value,value', or 'attr:~value,value...\"\
    \ which means excluding values. This option is used in both 'composition' and\
    \ 'scatter'."
  type: long?
  inputBinding:
    prefix: --restriction
- id: in_attributes
  doc: <attrs> is a comma-separated list of attributes to color the basis. This option
    is only used in 'scatter'.
  type: string?
  inputBinding:
    prefix: --attributes
- id: in_basis
  doc: "Basis for 2D plotting, chosen from 'umap', 'tsne', 'fitsne', 'fle', 'net_umap',\
    \ 'net_tsne', 'net_fitsne' or 'net_fle'. [default: umap]"
  type: long?
  inputBinding:
    prefix: --basis
- id: in_alpha
  doc: Point transparent parameter. Can be a single value or a list of values separated
    by comma used for each attribute in <attrs>.
  type: string?
  inputBinding:
    prefix: --alpha
- id: in_legend_loc
  doc: "Legend location, can be either \"right margin\" or \"on data\". If a list\
    \ is provided, set 'legend_loc' for each attribute in 'attrs' separately. [default:\
    \ right margin]"
  type: string?
  inputBinding:
    prefix: --legend-loc
- id: in_palette
  doc: Used for setting colors for every categories in categorical attributes. Multiple
    <palette> strings are allowed. Each string takes the format of 'attr:color1,color2,...,colorn'.
    'attr' is the categorical attribute and 'color1' - 'colorn' are the colors for
    each category in 'attr' (e.g. 'cluster_labels:black,blue,red,...,yellow'). If
    there is only one categorical attribute in 'attrs', ``palletes`` can be set as
    a single string and the 'attr' keyword can be omitted (e.g. "blue,yellow,red").
  type: string?
  inputBinding:
    prefix: --palette
- id: in_show_background
  doc: Show points that are not selected as gray.
  type: boolean?
  inputBinding:
    prefix: --show-background
- id: in_nrows
  doc: Number of rows in the figure. If not set, pegasus will figure it out automatically.
  type: long?
  inputBinding:
    prefix: --nrows
- id: in_ncols
  doc: Number of columns in the figure. If not set, pegasus will figure it out automatically.
  type: long?
  inputBinding:
    prefix: --ncols
- id: in_panel_size
  doc: Panel size in inches, w x h, separated by comma. Note that margins are not
    counted in the sizes. For composition, default is (6, 4). For scatter plots, default
    is (4, 4).
  type: long?
  inputBinding:
    prefix: --panel-size
- id: in_left
  doc: Figure's left margin in fraction with respect to panel width.
  type: string?
  inputBinding:
    prefix: --left
- id: in_bottom
  doc: Figure's bottom margin in fraction with respect to panel height.
  type: string?
  inputBinding:
    prefix: --bottom
- id: in_w_space
  doc: Horizontal space between panels in fraction with respect to panel width.
  type: string?
  inputBinding:
    prefix: --wspace
- id: in_hspace
  doc: Vertical space between panels in fraction with respect to panel height.
  type: string?
  inputBinding:
    prefix: --hspace
- id: in_group_by
  doc: Use <attr> to categorize the cells for the composition plot, e.g. cell type.
  type: string?
  inputBinding:
    prefix: --groupby
- id: in_condition
  doc: Use <attr> to calculate frequency within each category defined by '--groupby'
    for the composition plot, e.g. donor.
  type: string?
  inputBinding:
    prefix: --condition
- id: in_style
  doc: "Composition plot styles. Can be either 'frequency' or 'normalized'. [default:\
    \ normalized]"
  type: string?
  inputBinding:
    prefix: --style
- id: in_plot_type
  doc: Plot type, either 'scatter' for scatter plots or 'compo' for composition plots
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: Single cell data in Zarr or H5ad format.
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: Output image file.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- plot
