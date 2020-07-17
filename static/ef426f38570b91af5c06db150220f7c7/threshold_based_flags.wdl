version 1.0

task ThresholdBasedFlags.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? cut_off
    String? output_path_created
  }
  command <<<
    threshold_based_flags.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(output_path_created) then ("--output " +  '"' + output_path_created + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique: identifiers."
    group: "Add the option to separate sample IDs by treatement name."
    cut_off: "Cutoff to use for which values to flag. This defaults to 30,000"
    output_path_created: "Output path for the created flag file."
  }
}