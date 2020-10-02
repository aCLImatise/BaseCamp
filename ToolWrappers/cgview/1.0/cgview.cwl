class: CommandLineTool
id: cgview.cwl
inputs:
- id: in_specifies_label_size
  doc: Specifies a label font size.
  type: long
  inputBinding:
    prefix: -A
- id: in_specifies_base_center
  doc: Specifies the base to center on when zooming.
  type: long
  inputBinding:
    prefix: -c
- id: in_specifies_legend_size
  doc: Specifies a legend font size.
  type: long
  inputBinding:
    prefix: -D
- id: in_specifies_tick_density
  doc: Specifies tick density, between 0 and 1.0. Default is 1.0.
  type: double
  inputBinding:
    prefix: -d
- id: in_embed_vectorbased_text
  doc: Whether or not to embed vector-based text in SVG output.
  type: boolean
  inputBinding:
    prefix: -E
- id: in_exclude_svg_output
  doc: Whether or not to exclude SVG output from image series.
  type: boolean
  inputBinding:
    prefix: -e
- id: in_format_output_svg
  doc: 'The format of the output: PNG, JPG, SVG, or SVGZ.'
  type: string
  inputBinding:
    prefix: -f
- id: in_html_file_create
  doc: HTML file to create.
  type: File
  inputBinding:
    prefix: -h
- id: in_the_height_map
  doc: The height of the map.
  type: long
  inputBinding:
    prefix: -H
- id: in_input_file_parse
  doc: The input file to parse.
  type: File
  inputBinding:
    prefix: -i
- id: in_draw_labels_inside
  doc: Whether or not to draw labels on the inside of the backbone circle.
  type: boolean
  inputBinding:
    prefix: -I
- id: in_width_external_legend
  doc: The width of an external legend.
  type: long
  inputBinding:
    prefix: -L
- id: in_image_file_create
  doc: The image file to create.
  type: File
  inputBinding:
    prefix: -o
- id: in_path_image_file
  doc: The path to the image file in the HTML file created using the -h option.
  type: File
  inputBinding:
    prefix: -p
- id: in_whether_remove_legends
  doc: Whether or not to remove legends.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_whether_remove_labels
  doc: Whether or not to remove labels.
  type: boolean
  inputBinding:
    prefix: -R
- id: in_directory_receive_series
  doc: Directory to receive an image series.
  type: Directory
  inputBinding:
    prefix: -s
- id: in_reference_external_stylesheet
  doc: Whether or not to reference external stylesheet in HTML output.
  type: boolean
  inputBinding:
    prefix: -S
- id: in_reference_overlibjs_html
  doc: Whether or not to reference overlib.js in HTML output.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_specifies_sequence_size
  doc: Specifies a sequence ruler font size.
  type: long
  inputBinding:
    prefix: -U
- id: in_the_width_map
  doc: The width of the map.
  type: long
  inputBinding:
    prefix: -W
- id: in_comma_separated_values
  doc: Comma separated zoom values for image series.
  type: string
  inputBinding:
    prefix: -x
- id: in_the_factor_zoom
  doc: The factor to zoom in by.
  type: string
  inputBinding:
    prefix: -z
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cgview
