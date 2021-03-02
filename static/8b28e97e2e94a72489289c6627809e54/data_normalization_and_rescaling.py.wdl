version 1.0

task DataNormalizationAndRescalingpy {
  input {
    String? input_dataset_wide
    File? design
    String? uniqid
    String? method
    File? out
  }
  command <<<
    data_normalization_and_rescaling_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with unique.identifiers."
    method: "Name of the normalization method that user wants to\\napply."
    out: "Path for TSV output of the normalized/re-scalled data."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}