version 1.0

task RemoveSelectedFeaturesSamplespy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    File? flags
    String? flag_file_type
    String? flag_uniqid
    String? flag_drop
    String? value
    Int? condition
    File? out_wide
    File? out_flags
  }
  command <<<
    remove_selected_features_samples_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(flag_file_type) then ("--flagfiletype " +  '"' + flag_file_type + '"') else ""} \
      ~{if defined(flag_uniqid) then ("--flagUniqID " +  '"' + flag_uniqid + '"') else ""} \
      ~{if defined(flag_drop) then ("--flagDrop " +  '"' + flag_drop + '"') else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(out_wide) then ("--outWide " +  '"' + out_wide + '"') else ""} \
      ~{if defined(out_flags) then ("--outFlags " +  '"' + out_flags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    flags: "Flag file."
    flag_file_type: "Type of flag file"
    flag_uniqid: "Name of the column with unique identifiers in the flag\\nfiles."
    flag_drop: "Name of the flag/field you want to access."
    value: "Cut Value"
    condition: "Condition for the cutwhere 0=Equal to, 1=Greater than\\nand 2=less than."
    out_wide: "Output file without the Drops."
    out_flags: "Output file for Drops.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_wide = "${in_out_wide}"
    File out_out_flags = "${in_out_flags}"
  }
}