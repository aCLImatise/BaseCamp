version 1.0

task ScatterPlot2Dpy {
  input {
    String? var_0
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? name_column_x
    String? name_column_y
    File? figure
    String? palette
    String? color
  }
  command <<<
    scatter_plot_2D_py \
      ~{if defined(var_0) then ("-y " +  '"' + var_0 + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(name_column_x) then ("--X " +  '"' + name_column_x + '"') else ""} \
      ~{if defined(name_column_y) then ("--Y " +  '"' + name_column_y + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: "[-f FIGURE] [-pal PALETTE] [-col COLOR]"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    name_column_x: "Name of column for X values"
    name_column_y: "Name of column for Y values"
    figure: "Path of figure."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}