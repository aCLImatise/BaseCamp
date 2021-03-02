version 1.0

task ReadQC {
  input {
    File? in_one
    File? in_two
    File? out
    Boolean? txt
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    ReadQC \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (txt) then "-txt" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in_one: "Forward input gzipped FASTQ file(s)."
    in_two: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads as 'in1').\\nDefault value: ''"
    out: "Output qcML file. If unset, writes to STDOUT.\\nDefault value: ''"
    txt: "Writes TXT format instead of qcML.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}