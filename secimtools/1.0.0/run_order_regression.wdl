version 1.0

task RunOrderRegression.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? order
    String? levels
    String? fig
    String? table
    String? flags
    Boolean? debug
    String? palette
    String? color
  }
  command <<<
    run_order_regression.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Group/treatment identifier in design file [Optional]."
    order: "Name of the column on design file that contains run order"
    levels: "Different groups to sort by separeted by commas."
    fig: "Name of PDF to save scatter plots."
    table: "Name of table for scatter plots"
    flags: "Name of table flags"
    debug: "Add debugging log output."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}