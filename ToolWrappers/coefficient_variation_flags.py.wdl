version 1.0

task CoefficientVariationFlagspy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    File? group
    String? levels
    Int? cv_cut_off
    String? figure
    String? flag
    String? palette
    String? color
  }
  command <<<
    coefficient_variation_flags_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(cv_cut_off) then ("--CVcutoff " +  '"' + cv_cut_off + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of column in design file with Group/treatment\\ninformation."
    levels: "Different groups tosort by separeted by commas."
    cv_cut_off: "The default CV cutoff will flag 10 percent of the\\nrowIDs with larger CVs. If you want to set a CV\\ncutoff, put the number here. [optional]"
    figure: "Name of the output PDF for CV plots."
    flag: "Name of the output TSV for CV flags."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}