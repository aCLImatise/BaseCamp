version 1.0

task FastqTrim {
  input {
    File? in
    File? out
    Int? start
    Int? end
    Int? len
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqTrim \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input gzipped FASTQ file."
    out: "Output gzipped FASTQ file."
    start: "Trim this number of bases from the start of the read.\\nDefault value: '0'"
    end: "Trim this number of bases from the end of the read.\\nDefault value: '0'"
    len: "Restrict read length to this value (after trimming from start/end).\\nDefault value: '0'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}