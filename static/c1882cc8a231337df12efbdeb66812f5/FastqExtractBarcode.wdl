version 1.0

task FastqExtractBarcode {
  input {
    File? in
    String? out_main
    Int? cut
    String? out_index
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqExtractBarcode \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_main) then ("-out_main " +  '"' + out_main + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(out_index) then ("-out_index " +  '"' + out_index + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "input fastq file1."
    out_main: "output filename for main fastq."
    cut: "number of bases from the beginning of reads to use as barcodes. Default value: '0'"
    out_index: "output filename for index fastq. Default value: 'index.fastq.gz'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}