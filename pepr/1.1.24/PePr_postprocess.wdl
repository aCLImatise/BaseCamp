version 1.0

task PePrPostprocess {
  input {
    String? peak
    String? chip
    String? input_files_separated
    String? file_type
    Boolean? remove_artefacts
    Boolean? narrow_peak_boundary
  }
  command <<<
    PePr-postprocess \
      ~{if defined(peak) then ("--peak " +  '"' + peak + '"') else ""} \
      ~{if defined(chip) then ("--chip " +  '"' + chip + '"') else ""} \
      ~{if defined(input_files_separated) then ("--input " +  '"' + input_files_separated + '"') else ""} \
      ~{if defined(file_type) then ("--file-type " +  '"' + file_type + '"') else ""} \
      ~{true="--remove-artefacts" false="" remove_artefacts} \
      ~{true="--narrow-peak-boundary" false="" narrow_peak_boundary}
  >>>
  parameter_meta {
    peak: "peak file"
    chip: "chip files separated by comma"
    input_files_separated: "input files separated by comma"
    file_type: "read file types. bed, sam, bam"
    remove_artefacts: "remove peaks that may be caused by excess PCR duplicates"
    narrow_peak_boundary: "make peak width smaller but still contain the core binding region"
  }
}