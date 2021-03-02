version 1.0

task FastqExtractBarcode {
  input {
    File? in
    File? out_main
    Int? cut
    File? out_index
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqExtractBarcode \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_main) then ("-out_main " +  '"' + out_main + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(out_index) then ("-out_index " +  '"' + out_index + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "input fastq file1."
    out_main: "output filename for main fastq."
    cut: "number of bases from the beginning of reads to use as barcodes.\\nDefault value: '0'"
    out_index: "output filename for index fastq.\\nDefault value: 'index.fastq.gz'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_main = "${in_out_main}"
    File out_out_index = "${in_out_index}"
  }
}