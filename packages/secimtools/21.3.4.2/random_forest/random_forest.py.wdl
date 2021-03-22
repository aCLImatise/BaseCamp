version 1.0

task RandomForestpy {
  input {
    String? input_dataset_wide
    File? design
    File? id
    File? group
    String? levels
    Int? snum
    Int? num
    File? out
    File? out_two
    File? figure
    String? palette
    String? color
  }
  command <<<
    random_forest_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(snum) then ("--snum " +  '"' + snum + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_two) then ("--out2 " +  '"' + out_two + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers on wide\\nfile."
    group: "Group/treatment identifier in design file."
    levels: "Different groups to sort by separeted by commas."
    snum: "Number of estimators."
    num: "Number of varibles toplot ont Variable Importance Plot"
    out: "Output file name."
    out_two: "Output file name."
    figure: "Name of output file to store feature importance plots\\nfor the model"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_two = "${in_out_two}"
    File out_figure = "${in_figure}"
  }
}