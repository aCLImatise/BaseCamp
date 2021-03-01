version 1.0

task SplitByP7BarcodeP7File {
  input {
    Boolean? f
    Int split_by_p_seven_barcode
    Int p_five_file
    Int p_seven_file
  }
  command <<<
    split_by_p7_barcode p7_file \
      ~{split_by_p_seven_barcode} \
      ~{p_five_file} \
      ~{p_seven_file} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    split_by_p_seven_barcode: ""
    p_five_file: ""
    p_seven_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}