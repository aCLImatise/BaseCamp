version 1.0

task FastqExtract {
  input {
    File? in
    File? ids
    File? out
    Boolean? invert_match_keep
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqExtract \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (invert_match_keep) then "-v" else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input FASTQ file (gzipped or plain)."
    ids: "Input TSV file containing IDs (without the '@') in the first column and optional length in the second column."
    out: "Output FASTQ file."
    invert_match_keep: "Invert match: keep non-matching reads.\\nDefault value: 'false'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}