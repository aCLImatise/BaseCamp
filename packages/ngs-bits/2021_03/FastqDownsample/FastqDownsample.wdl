version 1.0

task FastqDownsample {
  input {
    File? in_one
    File? in_two
    Float? percentage
    File? out_one
    File? out_two
    Boolean? test
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqDownsample \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(percentage) then ("-percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in_one: "Forward input gzipped FASTQ file(s)."
    in_two: "Reverse input gzipped FASTQ file(s)."
    percentage: "Percentage of reads to keep."
    out_one: "Forward output gzipped FASTQ file."
    out_two: "Reverse output gzipped FASTQ file."
    test: "Test mode: fix random number generator seed and write kept read names to STDOUT.\\nDefault value: 'false'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}