version 1.0

task DataNormalizationAndRescalingpy {
  input {
    Boolean? m
    String? o
    String? input_dataset_wide
    File? design
    String? uniqid
    String? method
    File? out
  }
  command <<<
    data_normalization_and_rescaling_py \
      ~{if (m) then "-m" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    o: ""
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