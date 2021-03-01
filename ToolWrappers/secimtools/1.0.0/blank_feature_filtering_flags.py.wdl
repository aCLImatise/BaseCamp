version 1.0

task BlankFeatureFilteringFlagspy {
  input {
    String? input_dataset_wide
    File? design
    String? uniqid
    String? group
    Int? bff
    String? blank
    String? criteria
    File? out_flags
    File? out_bff
  }
  command <<<
    blank_feature_filtering_flags_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(bff) then ("--bff " +  '"' + bff + '"') else ""} \
      ~{if defined(blank) then ("--blank " +  '"' + blank + '"') else ""} \
      ~{if defined(criteria) then ("--criteria " +  '"' + criteria + '"') else ""} \
      ~{if defined(out_flags) then ("--outflags " +  '"' + out_flags + '"') else ""} \
      ~{if defined(out_bff) then ("--outbff " +  '"' + out_bff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with uniquedentifiers."
    group: "Name of column in design filewith Group/treatment\\ninformation."
    bff: "Default BFF value [default 5000]"
    blank: "name of the column with the blanks"
    criteria: "Value of the criteria to selct"
    out_flags: "Output path for flags file[CSV]"
    out_bff: "Output path for bff file[CSV]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_flags = "${in_out_flags}"
    File out_out_bff = "${in_out_bff}"
  }
}