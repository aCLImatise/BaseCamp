version 1.0

task DataNormalizationAndRescalingpy {
  input {
    Boolean? o_out
    String? input_dataset_wide
    File? design
    String? uniqid
    String? method
    File? out
  }
  command <<<
    data_normalization_and_rescaling_py \
      ~{if (o_out) then "-m" else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    o_out: "{mean,sum,median,centering,auto,range,pareto,level,vast}\\n-o OUT"
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