version 1.0

task MultipleTestingAdjustment.py {
  input {
    String? input_dataset_wide
    String? uniqid
    String? pval
    String? alpha
    String? out_adjusted
    String? flags
  }
  command <<<
    multiple_testing_adjustment.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(out_adjusted) then ("--outadjusted " +  '"' + out_adjusted + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    uniqid: "Name of the column with uniquedentifiers."
    pval: "Name of the column with p-value."
    alpha: "Alpha value."
    out_adjusted: "Output path for corrected file[TSV]"
    flags: "Output path for flags file[TSV]"
  }
}