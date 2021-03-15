version 1.0

task FastqExtractBarcode {
  input {
    File? in
    File? out_main
    File? out_index
    Int? cut
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqExtractBarcode \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_main) then ("-out_main " +  '"' + out_main + '"') else ""} \
      ~{if defined(out_index) then ("-out_index " +  '"' + out_index + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "input fastq file1."
    out_main: "output filename for main fastq."
    out_index: "output filename for index fastq.\\nDefault value: 'index.fastq.gz'"
    cut: "number of bases from the beginning of reads to use as barcodes.\\nDefault value: '0'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_main = "${in_out_main}"
    File out_out_index = "${in_out_index}"
  }
}