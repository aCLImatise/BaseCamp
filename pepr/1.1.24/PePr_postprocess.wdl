version 1.0

task PePrpostprocess {
  input {
    File? peak
    String? chip
    String? input_files_separated
    File? file_type
    Boolean? remove_artefacts
    String duplicates
  }
  command <<<
    PePr_postprocess \
      ~{duplicates} \
      ~{if defined(peak) then ("--peak " +  '"' + peak + '"') else ""} \
      ~{if defined(chip) then ("--chip " +  '"' + chip + '"') else ""} \
      ~{if defined(input_files_separated) then ("--input " +  '"' + input_files_separated + '"') else ""} \
      ~{if defined(file_type) then ("--file-type " +  '"' + file_type + '"') else ""} \
      ~{if (remove_artefacts) then "--remove-artefacts" else ""}
  >>>
  parameter_meta {
    peak: "peak file"
    chip: "chip files separated by comma"
    input_files_separated: "input files separated by comma"
    file_type: "read file types. bed, sam, bam"
    remove_artefacts: "remove peaks that may be caused by excess PCR"
    duplicates: "--narrow-peak-boundary"
  }
  output {
    File out_stdout = stdout()
  }
}