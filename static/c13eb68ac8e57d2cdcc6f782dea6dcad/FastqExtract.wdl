version 1.0

task FastqExtract {
  input {
    File? in
    File? ids
    File? out
    Boolean? invert_match_keep
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqExtract \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (invert_match_keep) then "-v" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input FASTQ file (gzipped or plain)."
    ids: "Input TSV file containing IDs (without the '@') in the first column and optional length in the second column."
    out: "Output FASTQ file."
    invert_match_keep: "Invert match: keep non-matching reads.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}