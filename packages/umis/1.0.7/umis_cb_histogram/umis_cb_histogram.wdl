version 1.0

task UmisCbHistogram {
  input {
    File? umi_histogram
    String fast_q
  }
  command <<<
    umis cb_histogram \
      ~{fast_q} \
      ~{if defined(umi_histogram) then ("--umi_histogram " +  '"' + umi_histogram + '"') else ""}
  >>>
  parameter_meta {
    umi_histogram: "Output a count of each UMI for each cellular barcode\\nto this file."
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_umi_histogram = "${in_umi_histogram}"
  }
}