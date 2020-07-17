version 1.0

task RetentionTimeFlags.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    Int? minutes
    Boolean? pctl
    String? cv_cut_off
    String? figure
    String? flag
    String? palette
    String? color
  }
  command <<<
    retention_time_flags.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(minutes) then ("--minutes " +  '"' + minutes + '"') else ""} \
      ~{true="--pctl" false="" pctl} \
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
    minutes: "Value cutoff. The default is .2 minutes assuming data are in minutes."
    pctl: "The difference is calculated by 95th percentile and 5th percentile by default. If you add this argument, it uses 90th percentile and 10th percentile. [optional]"
    cv_cut_off: "The default CV cutoff will flag 10 percent of the rowIDs with larger CVs. If you want to set a CV cutoff, put the number here. [optional]"
    figure: "Name of the output TSV for CV plots."
    flag: "Name of the output PDF for RT flags."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}