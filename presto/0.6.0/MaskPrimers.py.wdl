version 1.0

task MaskPrimerspy {
  input {
    String? barcode
  }
  command <<<
    MaskPrimers_py \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""}
  >>>
  parameter_meta {
    barcode: "is specified."
  }
  output {
    File out_stdout = stdout()
  }
}