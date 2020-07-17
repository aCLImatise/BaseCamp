version 1.0

task SplitByP7BarcodeP7File {
  input {
    Boolean? f
    String split_by_p_seven_barcode
    String p_five_file
    String p_seven_file
  }
  command <<<
    split_by_p7_barcode p7_file \
      ~{split_by_p_seven_barcode} \
      ~{p_five_file} \
      ~{p_seven_file} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    f: ""
    split_by_p_seven_barcode: ""
    p_five_file: ""
    p_seven_file: ""
  }
}