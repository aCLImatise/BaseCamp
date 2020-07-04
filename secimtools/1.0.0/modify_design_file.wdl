version 1.0

task ModifyDesignFile.py {
  input {
    String? input_dataset_wide
    String? design
    String? uniqid
    String? group
    String? drops
    String? out
  }
  command <<<
    modify_design_file.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(drops) then ("--drops " +  '"' + drops + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with uniquedentifiers."
    group: "Name of column in design filewith Group/treatment information."
    drops: "Name of the groups in yourgroup/treatment column that you want to remove from the design file."
    out: "Output path for the new design file"
  }
}