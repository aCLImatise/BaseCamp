version 1.0

task FastqFormat {
  input {
    File? in
    File? out
    Int? reads
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    FastqFormat \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input FASTQ file (gzipped or plain)."
    out: "Output text file. If unset, writes to STDOUT.\\nDefault value: ''"
    reads: "The number of reads to parse.\\nDefault value: '10000'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}