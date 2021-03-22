version 1.0

task MultipleTestingAdjustmentpy {
  input {
    String? input_dataset_wide
    String? uniqid
    String? pval
    String? alpha
    File? out_adjusted
    File? flags
  }
  command <<<
    multiple_testing_adjustment_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(out_adjusted) then ("--outadjusted " +  '"' + out_adjusted + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    uniqid: "Name of the column with uniquedentifiers."
    pval: "Name of the column with p-value."
    alpha: "Alpha value."
    out_adjusted: "Output path for corrected file[TSV]"
    flags: "Output path for flags file[TSV]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_adjusted = "${in_out_adjusted}"
    File out_flags = "${in_flags}"
  }
}