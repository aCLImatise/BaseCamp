version 1.0

task DataNormalizationAndRescaling.py {
  input {
    String? input_dataset_wide
    String? design
    String? uniqid
    String? method
    String? out
  }
  command <<<
    data_normalization_and_rescaling.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with unique.identifiers."
    method: "Name of the normalization method that user wants to apply."
    out: "Path for TSV output of the normalized/re-scalled data."
  }
}