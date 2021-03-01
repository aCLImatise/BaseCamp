version 1.0

task RetentionTimeFlagspy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    Float? minutes
    Boolean? pctl
    Int? cv_cut_off
    String? figure
    String? flag
    String? palette
    String? color
  }
  command <<<
    retention_time_flags_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(minutes) then ("--minutes " +  '"' + minutes + '"') else ""} \
      ~{if (pctl) then "--pctl" else ""} \
      ~{if defined(cv_cut_off) then ("--CVcutoff " +  '"' + cv_cut_off + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    minutes: "Value cutoff. The default is .2 minutes assuming data\\nare in minutes."
    pctl: "The difference is calculated by 95th percentile and\\n5th percentile by default. If you add this argument,\\nit uses 90th percentile and 10th percentile.\\n[optional]"
    cv_cut_off: "The default CV cutoff will flag 10 percent of the\\nrowIDs with larger CVs. If you want to set a CV\\ncutoff, put the number here. [optional]"
    figure: "Name of the output TSV for CV plots."
    flag: "Name of the output PDF for RT flags."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}