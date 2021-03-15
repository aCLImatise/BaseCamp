version 1.0

task ReadQC {
  input {
    File? in_one
    File? in_two
    File? out
    Boolean? txt
    File? out_one
    File? out_two
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    ReadQC \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (txt) then "-txt" else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in_one: "Forward input gzipped FASTQ file(s)."
    in_two: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads as 'in1').\\nDefault value: ''"
    out: "Output qcML file. If unset, writes to STDOUT.\\nDefault value: ''"
    txt: "Writes TXT format instead of qcML.\\nDefault value: 'false'"
    out_one: "If set, writes merged forward FASTQs to this file (gzipped).\\nDefault value: ''"
    out_two: "If set, writes merged reverse FASTQs to this file (gzipped)\\nDefault value: ''"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}