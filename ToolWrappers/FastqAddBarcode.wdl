version 1.0

task FastqAddBarcode {
  input {
    File? in_one
    File? in_two
    File? in_barcode
    File? out_one
    File? out_two
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqAddBarcode \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(in_barcode) then ("-in_barcode " +  '"' + in_barcode + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in_one: "Input FASTQ file 1."
    in_two: "Input FASTQ file 2."
    in_barcode: "Input barcode file."
    out_one: "Output filename for read 1 FASTQ."
    out_two: "Output filename for read 2 FASTQ."
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}