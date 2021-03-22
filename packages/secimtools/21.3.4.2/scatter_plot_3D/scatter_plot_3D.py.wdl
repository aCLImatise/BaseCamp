version 1.0

task ScatterPlot3Dpy {
  input {
    String? var_0
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? name_column_x
    String? name_column_y
    String? name_column_z
    File? figure
    String? palette
    String? color
    String? rotation
    String? elevation
  }
  command <<<
    scatter_plot_3D_py \
      ~{if defined(var_0) then ("-y " +  '"' + var_0 + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(name_column_x) then ("--X " +  '"' + name_column_x + '"') else ""} \
      ~{if defined(name_column_y) then ("--Y " +  '"' + name_column_y + '"') else ""} \
      ~{if defined(name_column_z) then ("--Z " +  '"' + name_column_z + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(rotation) then ("--rotation " +  '"' + rotation + '"') else ""} \
      ~{if defined(elevation) then ("--elevation " +  '"' + elevation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    var_0: "[-f FIGURE] [-pal PALETTE] [-col COLOR]"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    name_column_x: "Name of column for X values"
    name_column_y: "Name of column for Y values"
    name_column_z: "Name of column for Z values"
    figure: "Path of figure."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
    rotation: "camera viewing rotation"
    elevation: "Camera vieweing elevation\\n"
  }
  output {
    File out_stdout = stdout()
  }
}